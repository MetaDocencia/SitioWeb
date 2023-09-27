---
header:
  caption: "Material"
  image: ""
title: Publicaciones
view: 2
---
Navegá por las categorías de nuestras publicaciones: 
{{ $taxonomy := "categories" }}
{{ with .GetTerms $taxonomy }}
  <p>{{ (site.GetPage $taxonomy).LinkTitle }}:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
