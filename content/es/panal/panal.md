+++

title: "Panal"
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
  - block: people
    content:
      title: Comunidades Amigas
      # Choose which groups/teams of users to display.
      #   Edit `user_groups` in each user's profile to add them to one or more of these groups.
      user_groups:
          - Comunidades amigas
      sort_by: Params.last_name
      sort_ascending: true
    design:
      show_interests: false
      show_role: true
      show_social: true

