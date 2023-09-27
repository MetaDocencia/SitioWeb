---
header:
  caption: "Material"
  image: ""
title: Publicaciones
view: 2
---

{{ $taxonomy := "categories" }}
{{ with .GetTerms $taxonomy }}
  <p>
    {{ (site.GetPage $taxonomy).LinkTitle }}:
    {{ range $k, $_ := . -}}
      {{ if $k }} , {{ end }}
      <a href="{{ .list_categories }}">Categorías</a>
    {{- end }}
  </p>
{{ end }}


{{ $taxonomy := "tags" }}
{{ with .GetTerms $taxonomy }}
  <p>
    {{ (site.GetPage $taxonomy).LinkTitle }}:
    {{ range $k, $_ := . -}}
      {{ if $k }}, {{ end }}
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
    {{- end }}
  </p>
{{ end }}