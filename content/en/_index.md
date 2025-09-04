---
title: "Home"
type: landing

design:
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
          filename: 3azulrojo.png
          filters:
            brightness: 0.5
        text_color_light: true

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
      background:
        color: "#f6f7fb"

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
      background:
        color: "#f6f7fb"

  - block: testimonials
    content:
      items:
        - name: "Julio Zetter"
          role: "Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
          image: "/media/juliozetter.jpeg"
          text: "No cabe más que agradecer… Gracias por tanto MetaDocencia"
    design:
      background:
        color: "#ffffff"

  - block: cta-card
    content:
      title: Apoya a la ciencia latinoamericana
      text: Aquí te contamos cómo
      button:
        text: Súmate
        url: /donar/
    design:
      card:
        css_class: "bg-primary text-white"
---
