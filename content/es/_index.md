---
title: "Home"
date: 2023-10-24
type: landing

design:
  spacing: "6rem"

sections:
  # HERO
  - block: hero
    content:
      title: "Potenciemos a América Latina en el mapa de la investigación global"
      align: center            # center | start | end
      primary_action:
        text: "Súmate"
        url: "https://www.metadocencia.org/suscripcion/"
    design:
      css_class: "dark"        # texto claro + overlay
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      background:
        color: "navy"
        overlay: 0.18          # opacidad del overlay (0 a 1)
        image:
          filename: "3azulrojo.png"   # poner en assets/media/ o static/media/
          position: "center"          # o "50%"
          filters:
            brightness: 1

  # CTA IMAGE + PARAGRAPH — 1 (Quiénes somos)
  - block: cta-image-paragraph
    id: "quienes-somos"
    content:
      title: "Quiénes somos"
      text: >
        TEXTO A DEFINIR. MetaDocencia es una organización sin fines de lucro fundada en 2020.
        Nuestra comunidad está formada por personas y organizaciones que trabajan construyendo
        capacidades científicas locales para transformar la ciencia global. Hacemos crecer la
        ciencia en red, desde América Latina hacia el mundo.
      image: "quienesomos.jpg"
      button:
        label: "Conócenos"
        url: "https://julianbuede.github.io/blog/second-brain/"
    design:
      css_class: "bg-gray-100 dark:bg-gray-900"

  # CTA IMAGE + PARAGRAPH — 2 (Qué hacemos)
  - block: cta-image-paragraph
    id: "que-hacemos"
    content:
      title: "Qué hacemos"
      text: >
        Trabajamos para que la producción, la comunicación y la aplicación de saberes científicos
        y técnicos sean globalmente equitativos.
      image: "organigramaapaisado.png"
      button:
        label: "Conoce nuestros proyectos"
        url: "https://discord.gg/z8wNYzb"
    design:
      css_class: "bg-gray-100 dark:bg-gray-900"

  # STATS
  - block: stats
    id: "impacto"
    content:
      title: "Nuestro impacto"
      items:
        - value: "NN"
          label: "Proyectos financiados"
        - value: "+1500"
          label: "Personas formadas"
        - value: "+1000"
          label: "Personas en la comunidad de Slack"
    design:
      css_class: "bg-gray-100 dark:bg-gray-900"
      spacing:
        padding: ["1rem", 0, "1rem", 0]

  # TESTIMONIOS
  - block: testimonials
    id: "testimonios"
    content:
      title: "Lo que dice nuestra comunidad"
      items:
        - quote: "No cabe más que agradecer a los instructores que hicieron posible este curso, que sin duda es la semilla de grandes frutos. Gracias por tanto MetaDocencia."
          author: "Julio Zetter"
          role: "Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
          avatar: "juliozetter.jpeg"
    design:
      spacing:
        padding: ["6rem", 0, 0, 0]

  # CTA CARD
  - block: cta-card
    id: "apoya"
    content:
      title: "Apoya a la ciencia latinoamericana"
      text: "Aquí te contamos cómo"
      button:
        label: "Súmate"
        url: "https://hugoblox.com/templates/"
    design:
      card:
        css_class: "bg-primary-700"
        css_style: ""
---
