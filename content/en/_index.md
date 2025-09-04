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
    css_class: "dark"
    spacing:
      padding: [0,0,0,0]
      margin: [0,0,0,0]
    background:
      image:
        filename: 3azulrojo.png
        filters:
          brightness: 0.5

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
      - { statistic: "NN", description: "Proyectos\ nfinanciados" }
      - { statistic: "+1500", description: "personas\ nformadas" }
      - { statistic: "+1000", description: "personas en la\ ncomunidad de Slack" }
  design:
    spacing: { padding: ["1rem",0,"1rem",0] }
    css_class: "bg-gray-100 dark:bg-gray-900"

- block: testimonials
  content:
    items:
    - name: "Julio Zetter"
      role: "Coordinador en Jefe de la base de datos y hemeroteca virtual SciELO México"
      image: "juliozetter.jpeg"
      text: "No cabe más que agradecer… Gracias por tanto MetaDocencia"

- block: markdown
  content:
    text: |
      <div class="card text-center shadow-sm bg-primary-700">
        <div class="card-body py-5">
          <h2 class="card-title mb-3">Apoya a la ciencia latinoamericana</h2>
          <p class="lead mb-4">Aquí te contamos cómo</p>
          <a class="btn btn-light" href="/donar/">Súmate</a>
        </div>
      </div>
---
