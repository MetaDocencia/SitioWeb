---
title: "Home"
type: landing

design:
  spacing: "6rem"

sections:
  - block: hero
    content:
      title: Potenciemos a América Latina en el mapa de la investigación global
      primary_action:
        text: Súmate
        url: /suscripcion/
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      background:
        image:
          filename: 3azulrojo.png
          filters:
            brightness: 0.5
        text_color_light: true

  - block: cta-image-paragraph
    id: solutions
    content:
      items:
        - title: "Quiénes somos"
          text: "MetaDocencia es una organización sin fines de lucro fundada en 2020. Nuestra comunidad construye capacidades científicas locales para transformar la ciencia global. Hacemos crecer la ciencia en red, desde América Latina hacia el mundo."
          image: "quienesomos.jpg"
          button:
            text: "Conócenos"
            url: "/institucional/"
        - title: "Qué hacemos"
          text: "Trabajamos para que la producción, comunicación y aplicación de saberes científicos y técnicos sean globalmente equitativos."
          features:
            - "Impulsamos infraestructura"
            - "Formamos a personas investigadoras"
            - "Construimos comunidad"
          image: "organigramaapaisado.png"
          button:
            text: "Conoce nuestros proyectos"
            url: "/proyectos/"
    design:
      css_class: "bg-gray-100 dark:bg-gray-900"

  - block: stats
    content:
      items:
        - statistic: "NN"
          description: "Proyectos<br>financiados"
        - statistic: "+1500"
          description: "personas<br>formadas"
        - statistic: "+1000"
          description: "personas en la<br>comunidad de Slack"
    design:
      spacing:
        padding: ["1rem", 0, "1rem", 0]
      css_class: "bg-gray-100 dark:bg-gray-900"

  - block: testimonials
    content:
      items:
        - name: "Julio Zetter"
          role: "Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
          image: "juliozetter.jpeg"
          text: "No cabe más que agradecer… Gracias por tanto MetaDocencia"

  - block: cta-card
    content:
      title: "Apoya a la ciencia latinoamericana"
      text: "Aquí te contamos cómo"
      button:
        text: "Súmate"
        url: "/donar/"
    design:
      card:
        css_class: "bg-primary-700 text-white"
---
