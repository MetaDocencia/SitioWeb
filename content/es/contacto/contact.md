+++
title    = "Contacto"
subtitle = "Escríbenos"
type     = "landing"

[[sections]]
block = "contact"

  [sections.content]
  title    = "Contacto"
  subtitle = "Escríbenos"
  # Mostramos email como texto/enlace (opcional). Si preferís solo formulario, podés quitarlo.
  email    = "info@metadocencia.org"
  autolink = true

  # Enlaces de contacto (íconos bajo el formulario)
  [[sections.content.contact_links]]
  icon = "twitter"
  icon_pack = "fab"
  name = "Twitter/X"
  link = "https://twitter.com/metadocencia"

  [[sections.content.contact_links]]
  icon = "linkedin"
  icon_pack = "fab"
  name = "LinkedIn"
  link = "https://www.linkedin.com/company/metadocencia/"

  # Formulario: proveedor Formspree
  [sections.content.form]
  provider = "formspree"

    [sections.content.form.formspree]
    id = "xeqzpkjn"   # <-- pegá acá el ID exacto de Formspree
    # captcha = false    # (opcional; ver doc de Formspree reCAPTCHA)

  [sections.design]
  columns = "1"
+++
