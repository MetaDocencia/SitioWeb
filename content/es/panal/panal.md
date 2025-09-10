+++

title: "Home"
type: landing

design:
  spacing: "6rem"
  
sections:
  - block: hero
    content:
      title: Quiénes somos
      text: MetaDocencia es una organización sin fines de lucro fundada en 2020. Nuestra comunidad construye capacidades científicas locales para transformar la ciencia global. Hacemos crecer la ciencia en red, desde América Latina hacia el mundo.
    primary_action:
        text: Nuestra Gobernanza
        url: https://hugoblox.com/templates/](https://www.metadocencia.org/suscripcion/
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      background:
        image:
          filename: quienessomos.jpg
          filters:
            brightness: 0.3
        text_color_light: true

# A "Meet the Team" section created with the People widget.
# This section displays people from `content/authors/` which belong to the `user_groups` below.

widget = "people"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 1 # Order that this section will appear.

title = "Comunidades amigas"
subtitle = "Siempre felices de agrandar el panal. Para más información, escríbenos a [comunidad@metadocencia.org](mailto:comunidad@metadocencia.org)."

[content]
  # Choose which groups/teams of users to display.
  #   Edit `user_groups` in each user's profile to add them to one or more of these groups.
  user_groups = ["Comunidades amigas"]

[design]
  # Show user's social networking links? (true/false)
  show_social = true

  # Show user's interests? (true/false)
  show_interests = false

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.
  
  # Background color.
  # color = "navy"
  
  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"
  
  # Background image.
  # image = "background.jpg"  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.

  # Text color (true=light or false=dark).
  # text_color_light = true  
  
[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
+++
