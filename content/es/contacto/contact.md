+++
# Contact widget.
widget = "contact"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 60  # Order that this section will appear.

title = "Contacto"
subtitle = ""

# Automatically link email and phone?
autolink = true

# Email form provider
#   0: Disable email form
#   1: Netlify (requires that the site is hosted by Netlify)
#   2: formspree.io
email_form = 2
+++

{{< form-contact action="https://formspree.io/f/xeqzpkjn" >}}
  {{< input name="name" placeholder="Nombre" >}}
  {{< input name="email" placeholder="Email" type="email" >}}
  {{< textarea name="message" placeholder="Mensaje" >}}
  {{< button text="Enviar" >}}
{{< /form-contact >}}

+++
# Texto adicional debajo del formulario
widget = "blank"
headless = true
active = true
weight = 61

title = ""
subtitle = ""

+++

