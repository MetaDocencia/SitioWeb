---
date: "2020-05-14"
draft: false
type: page
linktitle: Generando tutoriales interactivos con el paquete learnr
summary: Si das clase de programación de R, este paquete permite generar tutoriales interactivos que podes compartir como un sitio web o como un paqute.
title: Generando tutoriales interactivos con el paquete learnr
authors: 
    - yabellini
type: post
weight: 1
tags: 
  - programación
  - R 
---

Desde el año pasado (2019) empecé a utilizar el paquete `learnr` que permite utilizar documentos RMarkdown para generar tutoriales interactivos.  En este post les cuento que aprendí hasta ahora. 

Como se explica en [la página del paquete](https://rstudio.github.io/learnr/), los tutoriales consisten en contenido (texto, figuras, ilustraciones, ecuaciones, videos, etc.) junto con componentes interactivos, como preguntas con múltiples opciones y fragmentos de código de R que los usuarios pueden editar y ejecutar directamente, para verificar y reforzar la comprensión. 

Estos tutoriales conservan automáticamente el avance que un usuario realizó, por lo que si un estudiante trabaja en algunos ejercicios o preguntas y vuelve al tutorial más tarde, puede retomarlo exactamente donde lo dejó.

Además el tutorial puede ser publicado de dos maneras: como una Shiny App o como un paquete.  Esta última posibilidad cobra más fuerza ahora que la [nueva versión de la IDE de RStudio](https://rstudio.com/products/rstudio/download/preview/) trae incorporado un panel llamado Tutorial donde se presentan todos los tutoriales instalados en tu máquina, como se ve en la siguiente figura:

{{< figure src="/img/learnr_panel_tutorial.png" alt="Captura de pantalla del panel Tutorial incorporado en RStudio">}}


## Cómo creo un tutorial


Lo primero es instalar el paquete `learnr` (`install.packages("learnr")`).  Esta instalación agrega un nuevo _template_ que podemos seleccionar cuando creamos un documento rmarkdown.  

Para generar un nuevo documento seleccionamos **File -> New File -> RMarkdown -> From Template -> Interactive Tutorial**, completamos el campo **Name** y presionamos el botón **Ok** (pasos 1 a 6 en la siguiente figura).

{{< figure src="/img/learnr_crear_nuevo_tuto.png" alt="Captura de pantalla de los pasos para crear el nuevo tutorial">}}

Esto crea un nuevo documento RMarkdown con el formato para un tutorial y ejemplos de contenido, veamos sus partes.


### Encabezado

Este documento tiene un encabezado YAML con los elementos `title`, `output` y `runtime`, es aconsejable agregar una descripción del tutorial con el elemento `description` (que no viene por defecto en la plantilla) porque se mostrará junto con el título en el panel Tutorial:

```
---
title: "Tutorial"
output: learnr::tutorial
runtime: shiny_prerendered
description: "Mi super genial tutorial de R"
---

```

### Chunks de código

Como en otros documentos rmarkdown el chunk de setup contiene el llamado al paquete `learnr`

````markdown
```{r setup, include=FALSE}
library(learnr)
knitr::opts_chunk$set(echo = FALSE)
```
````

Luego podemos utilizar los _chunks_ de código de la misma manera que en otros documentos: para mostrar código de ejemplo, para ejecutar código y ver el resultado o para ejecutar código que nos permita prepar el entorno de trabajo, como por ejemplo, cargar datasets o paquetes.

En los tutoriales un chunk de código puede transformarse en un **ejercicio**.  Los ejercicios presentarán al estudiante un espacio para escribir código, ejecutarlo y recibir una respuesta.  Este espacio puede estar *vacio* o puede *tener código previo incompleto*, para que el estudiante lo complete con la solución correcta.  Además hay ejercicios que pueden *presentar pistas y/o la solución*.

#### Ejercicio vacio

Para generar un ejercicio simple, sin código, se agrega el parámetro `exercice = TRUE` al chunk de R: 

{{< figure src="/img/learnr_chunk_ejercicio.png" alt="Código de R para generar un ejercicio en un tutorial">}}

Cuando compilamos el documento en el lugar del chunk de ejercicio se presenta una "caja" donde se puede escribir código y el botón `Run Code` (ejecutar código), presionándolo, se ejecuta el código escrito presentando el resultado correspondiente (sea una salida o un mensaje).

{{< figure src="/img/learnr_ejercicio_vacio.png" alt="Captura de pantalla del ejercicio simple, sin código">}}

#### Ejercicio con código previo, consejos y solución

Los chunks de ejercicios pueden contener código para completar, como una plantilla, para ayudar al estudiante a resolver la ejercitación o para concentrarse sólo en el tema o característica que estamos enseñando.


````markdown
```{r funcion-sumar, exercise=TRUE, exercise.lines = 5}
sumar <- function(___,___) {
  ______
}

sumar(___,___)
```
````

Si se quiere dar algunas pistas para ayudar a los estudiantes en la resolución de los ejercicios, especialmente si conocemos que el tema que estamos enseñando tiene errores de compresión comunes, podemos hacerlo generando un nuevo chunk de R con el mismo nombre que el chunk del ejercicio al que le agregamos la palabra `-hint`.

````markdown
```{r funcion-sumar-hint}
sumar <- function(___,___) {
  # Aqui debe ir el calculo sumando los dos parámetros 
  # que debe tener la función para recibir los dos números a sumar
}

sumar(___,___)
```
````

También podemos proveer la solución esperada, especialmente porque los problemas de programación pueden tener más de una solución válida.  Para ello generamos un nuevo chunk de R, con el mismo nombre del ejercicio y le agregamos la palabra `-solution`.

````markdown
```{r funcion-sumar-solution}
sumar <- function(numero1,numero2) {
  numero1+numero2
}

sumar(5,3)
```
````

Cuando escriban estos chunks en RStudio, se van a marcar errores en las secciones donde el código está incompleto, esto se ignora cuando se compila el documento gracias al atributo `exercice=TRUE` del primer chunk.


Así se ve este ejercicio en el tutorial:

{{< figure src="/img/learnr_chunk_hint_solution_documento.png" alt="Ejemplos de código para completar, pista y solución y como se ve en el tutorial">}}


### Preguntas

Se pueden incluir una o más preguntas de opción múltiple dentro de un tutorial para verificar que los estudiantes entendieron los conceptos presentados. Las preguntas pueden tener una o múltiples respuestas correctas.  Para incluirlas se debe llamar a la función `question` o `quiz` dentro de un chunk de R de esta manera:

````markdown
```{r quiz}
quiz(
  question("¿Qué paquete del listado nos permite realizar gráficos?", 
  correct = "Buen trabajo!, ggplot2 es el paquete que nos permite realizar gráficos.", 
  allow_retry = TRUE,
    answer("ggplot", message = "Cerca, pero no...intentalo de nuevo!"),
    answer("gplot2", message = "Nop...intentalo de nuevo!"),
    answer("plot2", message = "Incorrect. Intenta de nuevo!."),
    answer("ggplot2", correct = TRUE)
  ), caption = "Visualización"
)
```
````

La pregunta se presenta dentro de una "cajita" con el botón _Submit Answer_ (enviar respuesta), en caso que la respuesta sea correcta, debajo de la pregunta aparece un recuadro verde con el mensaje estipulado en el atributo `correct` de la función `question`.  En caso de que la respuesta sea incorrecta aparece un recuadro rojo, con el texto indicado en el atributto `message` de la función `answer` y un botón _Try again_ (intenta de nuevo), gracias al atributo `allow_retry = TRUE`.  En la siguiente figura se ven los tres estados de una pregunta:

{{< figure src="/img/learnr_quiz.png" alt="Ejemplo de pregunta antes de contestarse, con una respuesta correcta y con una respuesta incorrecta">}}

### Barra de navegación

Cada tutorial incluye una tabla de contenido que lleva registro del progreso del estudiante. Para generarla se utilizan los diferentes niveles de títulos, en nuestro ejemplo _Tema 1_ y _Tema 2_ son un título de segundo nivel (dos ##), luego _Ejercicios_ y _Preguntas_ son un título de tercer nivel (tres ###).  El progreso se puede borrar con el botón _Start Over_ (Comenzar desde el principio).

{{< figure src="/img/learnr_tabla_contenido.png" alt="Imágen con la tabla de contenidos del tutorial de ejemplo">}}

También existe la posibilidad de ir revelando el contenido una subsección a la vez, agregando al encabezado YAML la opción `progressive: true`. Esta función es muy útil para permitir que los estudiantes establezcan su propio ritmo y para ocultar información que estropearía un ejercicio o una pregunta que aparece justo después.


### Imagenes y otros recursos externos

Incluir elementos como imágenes y videos o estilos propios mediante CSS, etc. pueden mejorar la experencia de los estudiantes. Como el tutorial se puede implementar como una aplicación Shiny, estos recursos externos se deben colocar en alguno de los directorios a los que puede acceder el servidor web Shiny:

|Directorio |	Descripción |
| ---------------|----------------|
|images/ 	|Archivos de imágenes (ej. PNG, JPEG, etc.)|
|css/ 	|hojas de estilo CSS|
|js/ 	|JavaScript scripts|
|www/ |	Cualquier otro tipo de archivos (ej. datasets descargables)|

Para incluir tanto fotos como videos (publicados en YouTube o Vimeo) dentro de un tutorial se utiliza la sintaxis de RMarkdown tradicional:

```
Ejemplo de video:

![](https://www.youtube.com/watch?v=zNzZ1PfUDNk)

Ejemplo de figura:

![]("images/figura1.png")

```

### Compartiendo el tutorial

Los tutoriales se pueden publicar de la misma manera que las aplicaciones Shiny, incluyendo la ejecución local en la máquina de un usuario final, en un servidor Shiny o un servicio de alojamiento como shinyapps.io.  Para esta última opción se puede utilizar el botón de _Publish Document_ presente en la IDE de RStudio.

Otra forma de implementar un tutorial es incluirlo dentro de un paquete R y hacer que los usuarios lo ejecuten directamente a través de la función `learnr::run_tutorial`.  Aún estoy investigando esta última opción y realizaré un post con la experiencia.

Les dejo el [acceso al archivo RMarkdown del tutorial](/post/Tutorial/TuTorial.rmd) que fuí usando de ejemplo en este post para que puedan revisarlo, ejecutarlo y modificarlo por su cuenta.





