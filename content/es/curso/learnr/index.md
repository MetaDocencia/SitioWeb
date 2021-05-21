---
date: "2020-10-03"
draft: false
image:
  caption: "[Foto de Benjamin Wong en Unsplash](https://unsplash.com/photos/qVywyNo9_-E)"
  alt_text: "1 manzana roja y 2 manzanas verdes sobre una mesa, foto tomada por Benjamin Wong"
linktitle: Generando tutoriales interactivos con el paquete {learnr}
summary: Aprende como usar {learnr} para construir tutoriales interactivos con R.  Curso en desarrollo.
title: Generando tutoriales interactivos con el paquete {learnr}
authors: 
    - yabellini
    - paocorrales
type: cursos
weight: 30
tags:
  - Herramientas tecnológicas
---

### Objetivos

El **objetivo** de este curso es introducir a las personas que participan al paquete {learnr} de R y como utilizarlo para generar tutoriales interactivos que permitan a los y las estudiantes escribir y ejecutar código R directamente desde el tutorial, contestar preguntas y recibir feedback inmediato.

### ¿Para quién está pensado este taller?

Cada lección debe ser pensada, organizada y generada para una audiencia en particular, estas son las [personas tipo](/personas/) en la que pensamos cuando preparamos este taller:

* Josefina: conoce y enseña R en su cátedra en la universidad.  Está interesada en proporcionar feedback automatizados a la respuesta de los ejercicios de programación con R que dan en su materia. Más detalles sobre Josefina [aquí](/persona/josefina).

* Francisco: es desarrollador de paquetes, quiere explorar la opción de generar tutoriales interactivos como parte de la ayuda. Más detalles sobre Francisco [aquí](/persona/francisco). 

* Alex quiere desarrollar tutoriales para publicarlos como aplicaciones shiny con la idea de que sus estudiantes puedan empezar a trabajar enseguida con R sin sufrir con la instalación de herramientas. Más detalles sobre Alex [aquí](/persona/alex).

### Qué *no* incluye este taller

Si bien realizaremos actividades en RStudio, este taller NO es un curso de programación (es un taller sobre cómo enseñar programación).

Entre otras cosas, quedan fuera del alcance del taller:

* Entrenamiento en técnicas de programación
* Desarrollo en profundidad y práctica extensiva de las técnicas mencionadas
* Contenidos teóricos sobre pedagogía

### Cómo participar 

Para participar de este taller es necesario que te hayas [registrado](https://docs.google.com/forms/d/e/1FAIpQLScC20Me-fX7UmCNhNswulYfOVQF4XiyIHgtde_R8CWreCmWhA/viewform).

Para pre-inscribirte en este curso, por favor completá tu mail en el formulario de abajo con el mismo mail que usaste para registrarte.

<iframe 
  src="https://script.google.com/macros/s/AKfycbwCBCpFMEJFdB1REY0Atz9nTIUWynlbOydz9c2wrdlUkiC7h8aeT5WbV5PGFJE8bUm_wA/exec"
  frameBorder="0",
  title = "Formulario de pre-inscripción",
  width="100%",
  height = 300px,
  vertical-align="text-top">
  Explorador no compatible.
</iframe> 

(Si el formulario no aparece, es posible que tengas algún bloqueador de contenido instalado. En ese caso podés ir a [este link](https://script.google.com/macros/s/AKfycbwCBCpFMEJFdB1REY0Atz9nTIUWynlbOydz9c2wrdlUkiC7h8aeT5WbV5PGFJE8bUm_wA/exec))

En cuanto abramos vacantes te vamos a mandar un mail de invitación para que elijas el día y horario que más te convenga.


El taller es gratuito. Las personas que sean invitadas al taller se comprometen a cumplir con nuestro [código de conducta](https://metadocencia.org/cdc/).

Aprendemos mejor cuando conocemos al grupo con el que participamos. Por eso, si te interesa tomar este taller junto con tu grupo, escríbenos a [info@metadocencia.org](mailto:info@metadocencia.org) para acomodar a todo el grupo.

### Duración

El taller tiene una duración de 2 horas con intervalos (idealmente lejos de cualquier pantalla) de aproximadamente 5 minutos cada 50 minutos de contenidos.


### Cronograma tentativo  


|  Duración (min)  |  Actividad  |
| :------:|:----------- |
| 5 <img width="200"/> | Tiempo previo para conectarse y asegurarse que anda bien tu conexión de audio y video (si no tienes camara no importa) |
| 10 | Introducción de las docentes y del curso y repaso de las opciones comunes de las herramientas que vamos a usar. |
| 15 | Episodio 1: ¿Qué es un tutorial interactivo? | 
| 20 | Episodio 2:  ¿Cómo agrego preguntas a mi tutorial? | 
| 10 | Pausa |
| 15 | Episodio 3: ¿Cómo puedo realizar ejercicios con código en mis tutoriales? |
| 15 | Episodio 4: ¿Cómo comparto mis tutoriales? |
| 10 | Episodio 5: ¿Dónde aprendo más? |
| 10 | Cierre del taller: resumen y devolución |


#### Episodio 1 

* Pregunta: ¿Qué es un tutorial interactivo?
* Objetivos: 
  - Entender los beneficios de un tutorial interactivo 
  - Entender los componentes básicos de un tutorial interactivo
* Práctica: analizar la plantilla de learnr y reconocer las partes del tutorial, cambiar alguna opción en el YAML y analizar el cambio de comportamiento.

#### Episodio 2 

* Pregunta: ¿Cómo agrego preguntas a mi tutorial?
* Objetivos:
  - Entender los tipos de preguntas que existen en un tutorial learnr
  - Entender los componentes básicos de las preguntas multiple choice
  - Entender los componentes básicos de las preguntas de texto 
* Práctica: modificar una serie de preguntas en un tutorial de ejemplo armado para este taller.

#### Episodio 3 

* Pregunta: ¿Cómo puedo realizar ejercicios con código en mis tutoriales?
* Objetivos:
  - Entender los componentes básicos de los ejercicios
  - Entender el chunk exercise
  - Entender el chunk hint
  - Entender el chunk solution
  - Entender el setup previo de los chunks
* Practica: modificar un chunk de ejercicio previamente generado en el ejemplo y modificarlo para que entregue un hint y muestre una solución

#### Episodio 4

* Pregunta: ¿Cómo comparto mis tutoriales?
* Objetivos: 
  - Entender las diferentes maneras de publicar/compartir un tutorial con learnr
  - Entender las ventajas y desventajas de cada una
* Práctica: publicar el tutorial como una shiny app.

#### Episodio 5 

* Pregunta: ¿Dónde aprendo más?
* Objetivos:
  - Detalles de lugares donde aprender más sobre learnr
  - Detalle de paquetes que se pueden usar con learnr
  - Detalle de repositorios con código fuente de diferentes tipos de tutoriales.


### Materiales

* [Presentación que usamos en el curso](https://docs.google.com/presentation/d/1QLRUbERgEk85s8qK6mzmMJn7avQ_bEmTn_NzFYgqwkc/edit?usp=sharing) con notas ampliando el contenido para quienes dan la clase

* [Plantilla de formulario para la encuesta de fin del taller](https://docs.google.com/forms/d/1Rw4AMtM32ivHtU-nWufSL1BWe0mmTgHl7953-exZsh8/edit?usp=sharing)

* [Video del curso](https://youtu.be/d7eXzRzEdC8)

### ¿Te vienen bien cualquiera de nuestros contenidos? ¡Servite sin culpa!

Este curso se comparte bajo la licencia [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/deed.es_ES).
Es decir, podés reusar o editar cualquier material que aparece acá, lo único que pedimos a cambio es que cuando tomes material de acá incluyas una referencia a esta página web y compartas tu material con esta misma licencia.
