---
date: "2020-10-03"
draft: false
image:
  caption: "[Photo by Benjamin Wong on Unsplash](https://unsplash.com/photos/qVywyNo9_-E)"
linktitle: Generando tutoriales interactivos con el paquete {learnr}
summary: Aprende como usar {learnr} para construir tutoriales interactivos con R.  Curso en desarrollo.
title: Generando tutoriales interactivos con el paquete {learnr}
authors: 
    - yabellini
type: course
weight: 30
---

{{% alert note %}}
En desarrollo.Piloto realizado en LatinR 2020.
{{% /alert %}}

### Objetivos

El **objetivo** de este curso es introducir a los asistentes al paquete {learnr} y como utilizarlo para generar tutoriales interactivos que permitan a los y las estudiantes escribir y ejecutar código R directamente en el tutorial, contestar preguntas y recibir feedback inmediato.

### ¿Quién sos vos?

Cada lección debe ser pensada, organizada y generada para una audiencia en particular, estas son las personas en la que pensamos cuando preparamos este taller:

* **_Josefina:_** conoce y enseña R en su cátedra en la universidad.  Está familiarizada con _RMarkdown_ (es parte de lo que enseña a sus estudiantes y uno de los formatos en los que comparte ejercicios resueltos).  La cantidad de estudiantes de su materia le hace cada vez más difícil poder corregir todos los ejercicios de código _a mano_ así que está interesada en proporcionar feedback automatizados a la respuesta de los ejercicios de programación con R que dan en su materia.

* **_Francisco:_** es investigador de INTA y como resultado de sus investigaciones a generado paquetes de R que están publicados en CRAN. Está familiarizado con _RMarkdown_. Sabe que en la nueva IDE de RStudio hay un panel de tutoriales donde se podría cargar la ayuda de su paquete en formato de tutorial y quiere explorar esta opción. 

* **_Rene:_** es docente y ha tenido que llevar su clase de _introducción a R_ a formato virtual, esto le hace muy difícil poder ayudar a sus alumnos con la configuración de sus máquinas personales con todo el software necesario para llevar adelante la clase. Ya tiene ejercicios generados en formato rmarkdown. Con la idea de que puedan empezar a trabajar enseguida con R sin sufrir con la instalación en un inicio le parece buena idea generar tutoriales interactivos porque escuchó que se pueden publicar como una aplicación shiny.


### Duración

El taller tiene una duración de 2 horas con intervalos (idealmente lejos de cualquier pantalla) de aproximadamente 5 minutos cada 50 minutos de contenidos.

### Cronograma del curso y objetivos de cada episodio

#### Inicio
_tiempo total: 10 minutos_ 

- Introducción de las docentes y del curso.
- Repaso de las opciones comunes de las herramientas que vamos a usar.

#### Episodio 1 
_tiempo total: 15 minutos_

* Pregunta: ¿Qué es un tutorial interactivo?

* Objetivos: 
  - Entender los beneficios de un tutorial interactivo 
  - Entender los componentes básicos de un tutorial interactivo

* Práctica: analizar la plantilla de learnr y reconocer las partes del tutorial, cambiar alguna opción en el YAML y analizar el cambio de comportamiento.

#### Episodio 2 
_tiempo total: 20 minutos_

* Pregunta: ¿Cómo agrego preguntas a mi tutorial?

* Objetivos:
  - Entender los tipos de preguntas que existen en un tutorial learnr
  - Entender los componentes básicos de las preguntas multiple choice
  - Entender los componentes básicos de las preguntas de texto **proximamente**

* Práctica: modificar una serie de preguntas en un tutorial de ejemplo armado para este taller.

#### Corte 1
_tiempo total: 10 minutos_

#### Episodio 3 
_tiempo total: 25 minutos_

* Pregunta: ¿Cómo puedo realizar ejercicios con código en mis tutoriales?

* Objetivos:
  - Entender los componentes básicos de los ejercicios
  - Entender el chunk exercise
  - Entender el chunk hint
  - Entender el chunk solution
  - Entender el setup previo de los chunks **proximamente**

* Practica: modificar un chunk de ejercicio previamente generado en el ejemplo y modificarlo para que entregue un hint y muestre una solución

#### Episodio 4
_tiempo total: 15 minutos_

* Pregunta: ¿Cómo comparto mis tutoriales?

* Objetivos: 
  - Entender las diferentes maneras de publicar/compartir un tutorial con learnr
  - Entender las ventajas y desventajas de cada una

* Práctica: publicar el tutorial como una shiny app.

#### Episodio 5 
_tiempo total: 10 minutos_

* Pregunta: ¿Dónde aprendo más?

* Objetivos:
  - Detalles de lugares donde aprender más sobre learnr
  - Detalle de paquetes que se pueden usar con learnr
  - Detalle de repositorios con código fuente de diferentes tipos de tutoriales.

#### Cierre del taller
_tiempo total: 10 minutos_

- Solicitud de completar al encuesta de feedback del curso.
- Contacto docentes.
- Espacio para comentarios y preguntas.


### Materiales

* [Presentación que usamos en el curso](https://docs.google.com/presentation/d/1QLRUbERgEk85s8qK6mzmMJn7avQ_bEmTn_NzFYgqwkc/edit?usp=sharing) con notas ampliando el contenido para quienes dan la clase

* [Plantilla de formulario para la encuesta de fin del taller](https://docs.google.com/forms/d/1Rw4AMtM32ivHtU-nWufSL1BWe0mmTgHl7953-exZsh8/edit?usp=sharing)

* [Video del curso](https://youtu.be/n6IaftU1yjM)

### ¿Te vienen bien cualquiera de nuestros contenidos? ¡Servite sin culpa!

Este curso se comparte bajo la licencia [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/deed.es_ES).
Es decir, podés reusar o editar cualquier material que aparece acá, lo único que pedimos a cambio es que cuando tomes material de acá incluyas una referencia a esta página web y compartas tu material con esta misma licencia.
