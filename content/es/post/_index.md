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
  <p>
    {{ (site.GetPage $taxonomy).LinkTitle }}:
    {{ range $k, $_ := . -}}
      {{ if $k }}, {{ end }}
      <a href="{{ .Permalink }}">{{ .LinkTitle }}</a>
    {{- end }}
  </p>
{{ end }}
