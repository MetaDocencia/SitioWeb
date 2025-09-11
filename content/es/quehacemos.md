---
title: "Home"
date: 2023-10-24
type: landing

design:
  spacing: "6rem"

sections:

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
