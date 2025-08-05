+++
title       = "Contact us"
# subtitle    = ""
widget      = "contact"     # Este campo puede variar si lo definiste distinto
headless    = false

[sections]
  [[sections]]
  block = "contact"
  content:
    # Opciones de contenido extra (email, social, etc.)
    email:
      address = "info@metadocencia.org"
    social:
      twitter = "metadocencia"
      linkedin = "metadocencia"
    
    # Formulario de Formspree
    form:
      provider   = "formspree"
      formspree:
        id = "xeqzpkjn"         # tu Formspree Form ID
+++
