---
title: 'Home'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  - block: hero
    content:
      title: Potenciemos a América Latina en el mapa de la investigación global
      primary_action:
        text: Súmate
        url: https://hugoblox.com/templates/](https://www.metadocencia.org/suscripcion/
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      # For full-screen, add `min-h-screen` below
      css_class: "dark"
      background:
        color: "navy"
        image:
          # Add your image background to `assets/media/`.
          filename: 3azulrojo.png
          filters:
            brightness: 0.5
          size: cover
          position: center
          parallax: false
 - block: markdown
  id: solutions
  content:
    title: ""
    text: |
      <div class="row g-4 align-items-center">
        <div class="col-md-6">
          <img src="/media/quienesomos.jpg" alt="Personas de MetaDocencia colaborando en un taller en línea" class="img-fluid rounded mb-3">
          <h3>Quiénes somos</h3>
          <p>MetaDocencia es una organización sin fines de lucro fundada en 2020. Nuestra comunidad construye capacidades científicas locales para transformar la ciencia global. Hacemos crecer la ciencia en red, desde América Latina hacia el mundo.</p>
          <a class="btn btn-primary" href="/institucional/">Conócenos</a>
        </div>
        <div class="col-md-6">
          <img src="/media/organigramaapaisado.png" alt="Organigrama y líneas de trabajo de MetaDocencia" class="img-fluid rounded mb-3">
          <h3>Qué hacemos</h3>
          <p>Trabajamos para que la producción, comunicación y aplicación de saberes científicos y técnicos sean globalmente equitativos.</p>
          <ul>
            <li>Impulsamos infraestructura</li>
            <li>Formamos a personas investigadoras</li>
            <li>Construimos comunidad</li>
          </ul>
          <a class="btn btn-outline-primary" href="/proyectos/">Conoce nuestros proyectos</a>
        </div>
      </div>
  design:
    css_class: "bg-gray-100 dark:bg-gray-900"
    
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
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
      # Reduce spacing
      spacing:
        padding: ["1rem", 0, "1rem", 0]
  - block: testimonials
    content:
      title: ""
      text: ""
      items:
        - name: "3 TESTIMONIOS A DEFINIR - Julio Zetter"
          role: " Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
          # Upload image to `assets/media/` and reference the filename here
          image: "juliozetter.jpeg"
          text: "No cabe más que agradecer a los instructores que hicieron posible este curso, que sin duda es la semilla de grandes frutos. Gracias por tanto MetaDocencia"
    design:
      spacing:
        # Reduce bottom spacing so the testimonial appears vertically centered between sections
        padding: ["6rem", 0, 0, 0]
  - block: cta-card
    content:
      title: Apoya a la ciencia latinoamericana
      text: Aquí te contamos cómo
      button:
        text: Súmate
        url: https://hugoblox.com/templates/
    design:
      card:
        # Card background color (CSS class)
        css_class: "bg-primary-700"
        css_style: ""
---
