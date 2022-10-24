library(tidyverse)
library(tidytext)
library(topicmodels)
library(stm)

# Levantar los distintos archivos con las respuestas a las encuestas
archivos <- list.files("./Encuestas")
archivos <- archivos[-3]
cursos <- str_extract(archivos, "_[a-zA-Z]*")
cursos <- str_remove(cursos, "_")

encuestas <- list(1:5)

for (i in 1:length(archivos)){

  encuestas[[i]] <- readxl::read_xlsx(paste0("Encuestas/", archivos[i])) 
  
  encuestas[[i]] <- encuestas[[i]][1:3]
  
  names(encuestas[[i]]) <- c("Marca_temporal", "Para_mantener", "Para_mejorar")
  
  encuestas[[i]] <- encuestas[[i]] %>% 
    mutate(Anio = format(Marca_temporal, "%Y"),
           Mes = format(Marca_temporal, "%m"),
           curso = cursos[[i]])
}


encuestas_completa <- do.call("rbind", encuestas)



# Stopwords en español
# Stopwords: palabras de uso muy frecuente pero que proveen poca información.
# ej. artículos, preposiciones, pronombres.
stopwords <- read.csv("stopwords_es.csv")

# Retener la columna con valoraciones positivas y el curso
positivo <- encuestas_completa %>% 
  select(curso, Para_mantener)

# Separar el texto en palabras y filtrar las stopwords
palabras <- positivo %>% 
  unnest_tokens(word, Para_mantener) %>% 
  anti_join(stopwords, by = c("word" = "STOPWORD")) %>% 
  mutate(word = ifelse(str_detect(word, "clase"), "clase", word))

# Agrupar las palabras que pertenecen a la misma familia léxica o 
# comunican ideas similares.
palabras <- palabras %>% 
  mutate(word = case_when(str_detect(word, pattern = "^practi|^prácti") ~ "practica",
                          str_detect(word, pattern = "^grup|subgrup") ~ "grupos",
                          str_detect(word, pattern = "^configur") ~ "configuración",
                          str_detect(word, pattern = "consejo|tips|sugerencia") ~ "recomendaciones",
                          str_detect(word, pattern = "^enseñ") ~ "enseñar",
                          str_detect(word, pattern = "^herram") ~ "herramientas",
                          str_detect(word, pattern = "reuniones|salas|sala|breakout") ~ "salas",
                          str_detect(word, pattern = "estudiantes|alumnos|asistente") ~ "estudiantes",
                          str_detect(word, pattern = "documento|documentos|doc|compartido|compartidos|compartido2") ~ "doc. compartidos",
                          str_detect(word, pattern = "participa") ~ "participación",
                          str_detect(word, pattern = "ambiente|trato|agradable|ameno|distendido|comodo|onda|cordialidad") ~ "ambiente",
                          str_detect(word, pattern = "calidez|amabilidad|empat|paciencia|amigable") ~ "calidez",
                          str_detect(word, pattern = "predisposición|disposición") ~ "disposición",
                          str_detect(word, pattern = "clara|claridad|claro") ~ "claridad",
                          str_detect(word, pattern = "interactiva|interactuar|interactivo|compartir|interacci|intercam") ~ "interactuar",
                          str_detect(word, pattern = "dinámi|dinam") ~ "dinámica",
                          str_detect(word, pattern = "tiempo|pausa|descansos|recreos|ritmo") ~ "tiempos",
                          str_detect(word, pattern = "ejemplo") ~ "ejemplos",
                          str_detect(word, pattern = "ejercicio|actividad|ejercita") ~ "ejercicios",
                          TRUE ~ word))

# Armar el data frame con las palabras en una columna
# y la frecuencia de aparición en otra
tabla_total <- palabras %>% 
  count(word, sort = TRUE) %>% 
  filter(word != "forma", word != "tener", word != "zoom") %>% 
  filter(n > 29)

nrow(tabla_total)


# Crear la nube de palabras con colores aptos para personas daltónicas
# (3 opciones)

col_dalt <- scales::viridis_pal()(20)

# Tomado de https://personal.sron.nl/~pault/#fig:scheme_highcontrast
col_dalt2 <-  c('#4477AA', '#4477AA', '#4477AA',
                '#EE6677', '#EE6677','#EE6677',
                '#228833', '#228833','#228833', '#228833',
                '#CCBB44', '#CCBB44','#CCBB44',
                '#66CCEE', '#66CCEE','#66CCEE', '#66CCEE',
                '#AA3377', '#AA3377','#AA3377')

col_dalt3 <- c('#CC6677', '#CC6677', '#CC6677', '#332288', '#332288',
              '#DDCC77', '#DDCC77', '#117733', '#117733','#88CCEE', 
              '#88CCEE', '#882255', '#882255', '#44AA99', '#44AA99',
              '#999933', '#999933', '#AA4499', '#AA4499', '#AA4499')

library(htmlwidgets) 

Nube1 <- wordcloud2::wordcloud2(tabla_total, size = .4, color=col_dalt, ellipticity = .5)
saveWidget(nube,"Nube1.html",selfcontained = F)


Nube2 <- wordcloud2::wordcloud2(tabla_total, size = .4, color=col_dalt2, ellipticity = .5)
saveWidget(nube2,"Nube2.html",selfcontained = F)

Nube3 <- wordcloud2::wordcloud2(tabla_total, size = .4, color=col_dalt3, ellipticity = .5)
saveWidget(nube3,"Nube3.html",selfcontained = F)

# Armar un data frame con las palabras en una columna, el curso en otra
# y la frecuencia de aparición en otra.
tabla_curso <- palabras %>% 
  count(curso, word, sort = TRUE) 

# Tabla para el curso de abc
tabla_abc <- tabla_curso %>%
  filter(curso == "abc") %>%
  top_n(15, n) %>%
  mutate(Relativa = n/sum(n)) %>%
  select(-curso)


# Tabla para el curso de zoom
tabla_zoom <- tabla_curso %>% 
  filter(curso == "zoom") %>%
  top_n(15, n) %>% 
  mutate(Relativa = n/sum(n)) %>% 
  select(-curso) 


# Tabla para el curso de aprender a programar
tabla_programar <- tabla_curso %>% 
  filter(curso == "programar") %>%
  top_n(15, n) %>% 
  mutate(Relativa = n/sum(n)) %>% 
  select(-curso)


# writexl::write_xlsx(tabla_abc, "Palabras más frecuentes - Intro al ABC.xlsx")
# writexl::write_xlsx(tabla_zoom, "Palabras más frecuentes - Taller de Zoom.xlsx")
# writexl::write_xlsx(tabla_programar, "Palabras más frecuentes - Como enseñar a programar.xlsx")
# writexl::write_xlsx(tabla_total, "Palabras más frecuentes.xlsx")
