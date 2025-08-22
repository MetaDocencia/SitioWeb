---
title: "Buscar"
type: page
---
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js"></script>
<div id="search"></div>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    new PagefindUI({ element: "#search", showSubResults: true });
  });
</script>
