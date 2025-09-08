---
title: "Home"
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  - block: hero
    content:
      title: Potenciemos a América Latina en el mapa de la investigación global
      cta:
        label: Súmate
        url: /suscripcion/
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      background:
        image:
          # Add your image background to `assets/media/` or `static/media/`.
          filename: 3azulrojo.png
          filters:
            brightness: 0.5
          size: cover
          position: center
          parallax: false
        text_color_light: true

  # Alternativa nativa a `cta-image-paragraph`
  - block: columns
    id: solutions
    content:
      items:
        - title: "Quiénes somos"
          text: "MetaDocencia es una organización sin fines de lucro fundada en 2020. Nuestra comunidad construye capacidades científicas locales para transformar la ciencia global. Hacemos crecer la ciencia en red, desde América Latina hacia el mundo."
          image:
            filename: quienesomos.jpg
            alt: "Personas de MetaDocencia colaborando en un taller en línea"
          button:
            label: "Conócenos"
            url: /institucional/
        - title: "Qué hacemos"
          text: "Trabajamos para que la producción, la comunicación y la aplicación de saberes científicos y técnicos sean globalmente equitativos."
          features:
            - "Impulsamos infraestructura"
            - "Formamos a personas investigadoras"
            - "Construimos comunidad"
          image:
            filename: organigramaapaisado.png
            alt: "Organigrama y líneas de trabajo de MetaDocencia"
          button:
            label: "Conoce nuestros proyectos"
            url: /proyectos/
    design:
      # Section background
      background:
        color: "#f6f7fb"

  - block: stats
    content:
      items:
        - statistic: "NN"
          description: |
            Proyectos  
            financiados
        - statistic: "+1500"
          description: |
            personas  
            formadas
        - statistic: "+1000"
          description: |
            personas en la   
            comunidad de Slack
    design:
      background:
        color: "#f6f7fb"
      spacing:
        padding: ["1rem", 0, "1rem", 0]

  - block: testimonials
    content:
      title: ""
      text: ""
      items:
        - name: "Julio Zetter"
          role: "Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
          image: "juliozetter.jpeg"
          text: "No cabe más que agradecer a los instructores que hicieron posible este curso, que sin duda es la semilla de grandes frutos. Gracias por tanto MetaDocencia"
    design:
      spacing:
        padding: ["6rem", 0, 0, 0]

  - block: cta-card
    content:
      title: "Apoya a la ciencia latinoamericana"
      text: "Aquí te contamos cómo"
      button:
        label: "Súmate"
        url: /donar/
    design:
      card:
        # Bootstrap classes (compatibles con Blox)
        css_class: "bg-primary text-white"
        css_style: ""
---
