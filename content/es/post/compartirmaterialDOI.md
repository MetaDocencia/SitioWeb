---
date: "2020-09-01"
draft: false
type: page
linktitle: Compartir material educativo y mantener la autoría.
summary: compartir tu material educativo para que otras personas puedan usarlo es una idea potente y generosa. En este post te contamos como hacerlo manteniendo tu autoría.
title: Compartir material educativo y mantener la autoría.
authors: 
    - yabellini
type: post
weight: 1
tags: 
  - compartir
  - open education
  - tips técnicos
---

Como se detalla en [[1]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005963) generar material esducativo requieren un esfuerzo significativo tanto para su desarrollo inicial como para mantenerlo actualizado.

A pesar que existe la _paradoja de la reusabilidad_ [[2]](https://opencontent.org/blog/archives/3854) - [[3]](https://opencontent.org/blog/archives/6585) que postula que un material didáctico será más reutilizables cuando sea lo más genérico posible pero será más efectivo cuando esté personalizado para una audiencia particular, en un contexto particular [[4]](https://third-bit.com/2015/04/22/the-paradox-of-learning-objects.html); compatir nuestro material de una manera que otras personas puedan _encontrarla, **utilizarla**, mejorarla y **citarla**_ es una actividad que vale la pena el esfuerzo. 

Con la llegada de la virtualidad obligada debido al COVID-19, muchas/os docentes se han visto en la necesidad de compatir su material en un formato digital, además de tener que adaptar alguna parte del mismo.

Tanto en [[1]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005963) como en [[5]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1006915#pcbi.1006915.ref009), se menciona que tratar las lecciones como un recurso comunitario que debe actualizarse, adaptarse y mejorarse gradualmente puede _incrementar la calidad del material educativo y liberar un tiempo valioso de los docentes en el diseño de su propio material_.  No solo estaríamos ayudando a nuestros colegas, si no que podemos sumar beneficios para los estudiantes que pueden acceder a nuestro material sin costo y en el momento que lo necesiten.  Finalmente tendríamos un producto citable, es decir, podríamos pedir y obtener crédito por el material que hemos desarrollado, y también podríamos saber quién está usando este material y dónde.

_Entonces si quiero compartir mi material didáctico ¿cómo lo hago?, seguí leyendo que te lo contamos_

## Tres simples pasos para compartir lecciones

* **Paso 1: seleccionar una licencia abierta** que sea clara con respecto a como usar el material. Las licencias más utilizadas son las conocidas [Creative Commons](http://www.creativecommons.org.ar/licencias.html).  Existen diversos tipos de licencia dependiendo de lo que deseamos que pueda hacer quien use nuestros materiales.  Si no sabemos muy bien cual es la licencia que mejor se adapta a nuestras necesidades existe un [selector de licencias](https://creativecommons.org/choose/?lang=es_AR) que puede ayudarnos.
Si nuestro material tiene código en algún lenguaje de programación, entonces deberemos seleccionar también una [licencia abierta, pensada para software](https://www.gnu.org/licenses/license-list.html#SoftwareLicenses).  Sugiero la licencia [MIT](https://opensource.org/licenses/MIT) o bien, teniendo en cuenta el impacto que el software y la ciencia de datos tienen en nuestra vida, la [licencia hipocrática](https://firstdonoharm.dev/), que permite usar el código libremente siempre que el usuario no esté violando los tratados básicos de derechos humanos. 

* **Paso 2: almacenar el material en un repositorio que nos permita publicarlo.** Un lugar que nos permite realizar esta tarea es [GitHub](https://github.com/) que se usa para desarrollar una variedad de materiales porque nos permite tener diferentes tipos de contenido como diapositivas, documentos, código fuente, imágenes y también nos permite desarrollarlo continuamente a través de un proceso iterativo y con comentarios de otros, ya que GitHub implementa un [sistema de control de versiones](https://es.wikipedia.org/wiki/Control_de_versiones). Si no has usado GitHub, podes utilizar este [tutorial inicial sobre Git](https://yabellini.netlify.app/es/courses/tallerdegitconr/).

* **Paso 3: agregar un [indentificador de objeto digital (DOI)](https://es.wikipedia.org/wiki/Identificador_de_objeto_digital) para que sea citable.** Vamos a describir este paso con mucho detalle siguiendo estas [intrucciones de GitHub](https://guides.github.com/activities/citable-code/).

    * Entrar a [Zenodo](https://zenodo.org/) y presionar el botón Login en la parte superior derecha de la página y seleccionar la opción de iniciar sesión con tu cuenta de GitHub. 
   {{< figure src="/img/screen1.png" >}}

    * Debemos _autorizar la aplicación_ para otorgarle a Zenodo los permisos que necesita para poder asignar un DOI a tu repositorio. 
    {{< figure src="/img/screen2.png" >}}

    * Luego de confirmar que es nuestra cuenta (nos llegará un mail), estaremos logueados en Zenodo y en la esquina superior derecha aparece nuestro correo asociado a GitHub, si hacemos click en el triangulito se despliega un menú donde seleccionamos GitHub:  
    {{< figure src="/img/screen3.png" >}}

    
    * Ahora, elije el repositorio que deseas archivar. Para habilitar esta funcionalidad hacemos clic en el botón Activar junto a al repositorio (en este caso GEE_course_code). El respositorio debe ser _público_

    {{< figure src="/img/screen4.png" >}}

    * Debemos verificar que la configuración del repositorio para enviarle mensajes a Zenodo fue exitosa, para eso hacemos clic en la pestaña de configuración en tu repositorio y luego clic en _Webhooks_ en el menú de la izquierda. Deberías ver una pantalla similar a la siguiente imagen: 

    {{< figure src="/img/screen5.png" >}}

    * Crea una nueva versión: Zenodo archiva tu repositorio cada vez que generes una nueva versión. Para esto regresamos a la vista principal del repositorio y en el menú de la derecha clickeamos en _create new release_.
    {{< figure src="/img/screen6.png" >}}
   
    * Debemos completar la versión de este _release_, el título y la descripción y luego presionar el botón _publish release_, como se muestra en la siguiente figura.
    {{< figure src="/img/screen7.png" >}}

    * Ahora vamos a obtener el DOI, para eso debemos volver a Zenodo y hacer click en _Upload_. Allí va a mostrarnos los diferentes materiales que tenemos publicados enZenodo, si hacemos click en el nombre, nos muestra todo el detalle, podemos editar la inforamción y si bajamos en la página a la derecha nos muestra el DOI y una cita sugerida.

    {{< figure src="/img/screen8.png" >}}


Listo, ya tenemos el DOI y la cita que podemos agregar a nuestro repo y pedirle a las personas que usen nuestros materiales que la utilicen para mencionarnos.





