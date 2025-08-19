// Netlify Edge Function — Banner de mantenimiento programado (bilingüe)
// Lee MAINT_START_UTC, MAINT_END_UTC, MAINT_MESSAGE_ES, MAINT_MESSAGE_EN
// Soporta MAINT_TEST_MODE=1 y ?maint_test=1 para pruebas fuera de ventana
// Restringe a dominios (MAINT_ALLOWED_HOSTS) solo en producción
// Accesible (role="status"), responsive y cerrable (cookie con TTL hasta fin de ventana)

function esc(s) {
  return String(s).replace(/[&<>"']/g, (m) => ({
    "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;"
  }[m]));
}

export default async (request, context) => {
  const url = new URL(request.url);

  // Contexto Netlify
  const CONTEXT = Deno.env.get("CONTEXT") || "production"; // 'production' | 'deploy-preview' | 'branch-deploy'
  const isProd = CONTEXT === "production";

  // Hosts permitidos en producción (CSV)
  const hostsCSV = Deno.env.get("MAINT_ALLOWED_HOSTS") || "metadocencia.org,www.metadocencia.org";
  const ALLOWED_HOSTS = hostsCSV.split(",").map(s => s.trim()).filter(Boolean);
  if (isProd && !ALLOWED_HOSTS.includes(url.hostname)) return context.next();

  // Ventana en UTC (ISO 8601)
  const START = new Date(Deno.env.get("MAINT_START_UTC") ?? "2025-08-21T22:00:00Z");
  const END   = new Date(Deno.env.get("MAINT_END_UTC")   ?? "2025-08-22T01:00:00Z");
  const now   = new Date();

  // Modo test
  const TEST_MODE = Deno.env.get("MAINT_TEST_MODE") === "1" || url.searchParams.has("maint_test");
  if (!(TEST_MODE || (now >= START && now <= END))) return context.next();

  // Solo HTML y respetar cierre por cookie
  const response = await context.next();
  const ct = response.headers.get("content-type") || "";
  if (!ct.includes("text/html")) return response;

  const cookieKey = "md_maint_" + btoa(`${START.toISOString()}_${END.toISOString()}`).replace(/=+$/,"");
  const cookies = request.headers.get("cookie") || "";
  if (new RegExp(`(?:^|;\\s*)${cookieKey}=1(?:;|$)`).test(cookies)) return response;

  // Mensajes
  const msgES = Deno.env.get("MAINT_MESSAGE_ES") ??
    "Mantenimiento programado: el sitio puede no estar disponible por algunas horas.";
  const msgEN = Deno.env.get("MAINT_MESSAGE_EN") ??
    "Scheduled maintenance: the site may be unavailable for a few hours.";
  const moreURL = Deno.env.get("MAINT_MORE_INFO_URL") || ""; // opcional

  // Horarios: ART (UTC-3) + UTC
  const tzART = "America/Argentina/Buenos_Aires";
  const fmtHM = (d, tz, locale) => new Intl.DateTimeFormat(locale, {
    timeZone: tz, hour: "2-digit", minute: "2-digit", hour12: false
  }).format(d);
  const artRange = `${fmtHM(START, tzART, "es-AR")}–${fmtHM(END, tzART, "es-AR")} (UTC-3)`;
  const utcRange = `${fmtHM(START, "UTC", "en-GB")}–${fmtHM(END, "UTC", "en-GB")} UTC`;

  // TTL cookie hasta fin de ventana (máx 6 h)
  const ttlSec = Math.max(60, Math.min(6 * 3600, Math.ceil((END - now) / 1000)));

  const linkMore = moreURL ? `<a href="${esc(moreURL)}" target="_blank" rel="noopener">Más info / More info</a>` : "";

  const bannerHTML = `
  <div id="md-maint-banner" role="status" aria-live="polite">
    <div class="md-maint-wrap">
      <div class="md-maint-text">
        <p class="md-line" lang="es"><strong>${esc(msgES)}</strong></p>
        <p class="md-line" lang="en"><strong>${esc(msgEN)}</strong></p>
        <p class="md-time">
          <small>Horario / Time: <span lang="es">${artRange}</span> · <span lang="en">${utcRange}</span></small>
          ${linkMore ? ` · <small>${linkMore}</small>` : ""}
        </p>
      </div>
      <button type="button" class="md-maint-close" aria-label="Cerrar aviso / Dismiss">&times;</button>
    </div>
    <style>
      #md-maint-banner{position:sticky;top:0;z-index:10000}
      #md-maint-banner .md-maint-wrap{
        display:flex;gap:.75rem;align-items:center;justify-content:space-between;
        padding:.75rem 1rem;font:600 .95rem/1.35 system-ui,-apple-system,Segoe UI,Roboto;
        background:#fff3cd;color:#5f3b00;border-bottom:2px solid #f1c40f
      }
      #md-maint-banner .md-maint-text{font-weight:500}
      #md-maint-banner .md-line{margin:.15rem 0}
      #md-maint-banner .md-time{margin:.25rem 0 0}
      #md-maint-banner .md-maint-close{
        background:none;border:0;font-size:1.25rem;line-height:1;cursor:pointer
      }
      #md-maint-banner a{text-decoration:underline}
      @media (max-width:720px){
        #md-maint-banner .md-maint-wrap{flex-direction:column;align-items:stretch}
        #md-maint-banner .md-maint-close{align-self:flex-end}
      }
    </style>
    <script>
      (function(){
        var key = ${JSON.stringify(cookieKey)};
        var ttl = ${ttlSec};
        var b=document.getElementById('md-maint-banner');
        b?.querySelector('.md-maint-close')?.addEventListener('click', function(){
          document.cookie= key + '=1; path=/; max-age=' + ttl;
          b.remove();
        });
      })();
    </script>
  </div>`;

  return new HTMLRewriter()
    .on("body", { element(el){ el.prepend(bannerHTML, { html: true }); } })
    .transform(response);
};

export const config = { path: "/*" };
