---
date: "2024-07-16"
draft: false
type: page
linktitle: Caso de estudio EPH
summary: "Este caso busca ejemplificar un proceso virtuoso de reutilización de datos públicos a través del desarrollo de herramientas libres."
title: "Ciencia Abierta en acción: el caso de la Encuesta Permanente de Hogares"
authors:
  - dburin
  - vxhardez
  - Carolina Trogliero
type: post
weight: 1
tags: 
  - MetaDocencia 
categories:
  - Historias de Ciencia Abierta en acción
---

La **Ciencia Abierta puede definirse como prácticas que permiten que los productos y procesos de una investigación estén disponibles para todas las personas por igual**. No obstante, no hay una única forma de hacer Ciencia Abierta ya que dependerá de cada proyecto, su alcance y limitaciones, las partes interesadas, los recursos disponibles, entre otras.  

El siguiente caso busca ejemplificar un **proceso virtuoso de reutilización de datos públicos a través del desarrollo de herramientas libres que son usadas para la producción de conocimiento de la academia y de otras comunidades, quienes a su vez contribuyen a las políticas públicas**.

## La Encuesta Permanente de Hogares (EPH), el paquete EPH, y su uso en producción académica y difusión

Como en otros países del mundo y de América Latina, en Argentina hay un organismo público de carácter técnico, dentro de la órbita del Ministerio de Economía, que coordina y produce estadísticas demográficas, económicas y sociales: el Instituto Nacional de Estadística y Censos ([INDEC](https://www.indec.gob.ar/indec/web/Institucional-Indec-QuienesSomos)). 

Entre otras producciones, el INDEC realiza la Encuesta Permanente de Hogares ([EPH](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-1)), un programa nacional de muestreo continuo con resultados trimestrales, sistemático y permanente, que cubre todo el territorio nacional ([video de presentación](https://www.youtube.com/watch?v=FpLA775mlxw)). Las personas que realizan las encuestas de la EPH se acercan presencialmente a una muestra de casi 120.000 hogares de la que se obtiene indicadores sociodemográficos y socioeconómicos de la población: indicadores de empleo, desocupación, precariedad laboral, pobreza, indigencia, educación, ingresos, migraciones, vivienda y condiciones de vida de los hogares. Con los datos obtenidos en esta encuesta se proporcionan regularmente, entre otros resultados, las tasas oficiales de empleo, desocupación, subocupación y pobreza. La difusión de esos resultados se complementa con la producción habitual de una gran cantidad de tablas e información agregada que están disponibles para su descarga y uso.

Un equipo de investigación multidisciplinar, externo al INDEC (T[iscornia et al., 2019](https://zenodo.org/records/3462678), [Kozlowski et al, 2020](https://zenodo.org/records/3720104); [Pradier et al., 2023](https://zenodo.org/records/8352221)), ha creado una herramienta de análisis mediante el [lenguaje de programación R](https://cran.r-project.org/web/packages/eph/eph.pdf): la [librería eph](https://ropensci.github.io/eph/index.html). Fue creada en 2019 ([video de presentación](https://www.youtube.com/watch?v=WxtiAOeGBi8)), y al día de hoy se ha mantenido, actualizado, e incorporado nuevas funciones. El paquete permite procesar los datos alojados en la EPH y así replicar u obtener conclusiones independientes de aquellas publicadas en los informes elaborados por el organismo, así como analizar diferentes categorías e indicadores no proporcionados en los informes oficiales. 

Dado que la información de la EPH constituye una de las principales fuentes para el análisis de las problemáticas sociales en Argentina, el paquete no sólo posibilita investigaciones académicas y periodísticas, sino que también contribuye a la formulación de políticas públicas fundamentadas en evidencia. 

Por ejemplo, ha dado lugar a la publicación de artículos sobre la evolución del vínculo entre la inserción en el mercado de trabajo y las condiciones de acceso al sistema de salud entre 2004 y 2020 ([Pradier, 2021](http://www.scielo.org.ar/scielo.php?pid=S2545-77562021000100090&script=sci_abstract&tlng=en)); el análisis de la la capacidad de reproducción de la fuerza de trabajo argentina entre 2016 y 2019 ([Kennedy et al., 2023](http://www.scielo.org.ar/scielo.php?pid=S1852-16062023000200208&script=sci_abstract&tlng=en)), cuestiones metodológicas sobre la relación entre educación y salarios ([Martínez Iriarte, 2022](http://www.scielo.org.ar/scielo.php?script=sci_abstract&pid=S2525-12952022000100005&lng=es&nrm=iso&tlng=es)), y en tesis de posgrado, por ejemplo sobre cuestiones metodológicas y estadísticas en la medición de la dimensionalidad del bienestar ([Brau, 2021](http://hdl.handle.net/10908/22978)), entre otras publicaciones académicas. 

Otro ejemplo, en el terreno de la difusión a la comunidad y la contribución a políticas públicas, es el uso por parte del equipo [Ecofemidata](https://ecofeminita.com/ecofemidata/?v=5b61a1b298a0) de la asociación civil [Ecofeminita](https://ecofeminita.com/?v=5b61a1b298a0), para aportar datos sobre la desigualdad de género con indicadores, estadísticas, e informes temáticos reproducibles. Entre otros usos, el equipo de Ecofemidata mantiene [una app](https://ecofeminita.com/app-ecofemidata/?v=5b61a1b298a0) que analiza el mercado de trabajo, ingresos, uso del tiempo, y trabajo doméstico. El aporte de datos y análisis es un insumo importante en el trabajo de la Asociación para la visibilización de las desigualdades de género. En base a ello, Ecofeminita ha elaborado materiales de difusión (para escuelas, en medios y redes sociales), y realiza asesoramiento sobre políticas públicas en distintos niveles de gobierno.

Y esta no es la única experiencia. Programadores, cientistas de datos y personas de diferentes disciplinas han desarrollado en Python la librería PyEPH ([Carolina Trogliero et al., 2022](https://zenodo.org/records/6727908)), que tiene un propósito similar al paquete de EPH en R, pero para ser usado y sostenido por personas de la comunidad datera de Python.

La [librería PyEPH](https://pyeph.readthedocs.io/es/latest/) tiene como objetivo facilitar el procesamiento de la EPH publicada por INDEC en Python. Está pensada como una herramienta en la que se nuclean y centralizan los cálculos vinculados a las mismas para luego ser usadas en, por ejemplo, investigaciones, artículos y publicaciones. Es una librería que hace principal hincapié en la transparencia metodológica usando licencias de código abierto y que promueve la colaboración de las comunidades y personas que hacen ciencia de datos, ciencias sociales, investigaciones, desarrollos, periodismo o que tengan cualquier otro interés o curiosidad. Permite calcular indicadores vinculados al mercado laboral, pobreza e indigencia, así como también fusionar otras bases de datos compatibles con las EPH. La librería tiene la particularidad de ser bilingüe español/inglés y es sostenida principalmente por quienes la crearon, pero también cuenta con aportes de la comunidad de Python. 

## La importancia de las comunidades de práctica
Tanto el paquete eph en R como la librería PyEPH en Python fueron creados por personas que frecuentaban comunidades de práctica de R y Python. En el caso de eph, las comunidades [R-Ladies Buenos Aires](https://rladiesba.netlify.app/), [R en Buenos Aires](https://renbaires.github.io/) y [LatinR](https://latin-r.com/) fueron los ámbitos en los que los intercambios de ideas sobre eph florecieron a lo largo de su desarrollo. Por su parte, quienes crearon PyEPH  también consultaron a quienes se involucraron con eph. **Un ejemplo más de lo fructífero que es nutrir y sostener comunidades de práctica que impulsan la colaboración inclusiva, valores que resuenan profundamente con MetaDocencia**.

## Agradecimientos
Esta publicación fue posible gracias a un subsidio de Chan Zuckerberg Initiative (DOI: 10.5281/zenodo.7386372), los subsidios de la NASA 80NSSC23K0854 (DOI: 10.5281/zenodo.8215455), 80NSSC23K0857 (DOI: 10.5281/zenodo.8250978) y 80NSSC23K0861 (DOI: 10.5281/zenodo.8212072) y el grant DAF2021-239366 y DOI de subsidio [https://doi.org/10.37921/522107izqogv](https://doi.org/10.37921/522107izqogv) de la Chan Zuckerberg Initiative DAF, un fondo aconsejado por la Silicon Valley Community Foundation (DOI de financiador 10.13039/100014989) y el subsidio “Open Cloud Collaborative Project for Latin America and Africa (the Catalyst Project)” del mismo financiador (DOI: [https://doi.org/10.5281/zenodo.8431422](https://doi.org/10.5281/zenodo.8431422))).

---

*¿Te gustó esta publicación? Puedes reutilizarla libremente bajo licencia CC by 4.0, solo tienes que citarla.* 
Burin, D. I., Xhardez, V., & Trogliero, C. (2024). Ciencia Abierta en acción: el caso de la Encuesta Permanente de Hogares. Zenodo. https://doi.org/10.5281/zenodo.12752837

Esta es la cita que te recomendamos usar para referenciarla:
