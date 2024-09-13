---
date: "2024-08-20"
draft: false
type: page
linktitle: Collaborative Contextualization
summary: "From MetaDocencia we proposed to go through the experience of contextualizing the contents in a collaborative way."
title: "The Collaborative Experience of the First Contextualization into Spanish of the Open Science 101 Course Developed by NASA"
authors:
  - acalero
  - irenevazano
  - lacion
  - laurel
  - mvera
  - npalopoli
  - pvazquez
  - slopez
  - vruiz
  - vxhardez
type: post
weight: 1
tags: 
  - MetaDocencia 
categories:
  - Topics
  - Institutional
---

As we shared in [this publication](https://www.metadocencia.org/en/post/nasatops/), MetaDocencia has co-created **three projects aimed at individuals in education, science, and technology within our Spanish-speaking community**. These projects are framed by the Transform to Open Science (TOPS) initiative, a 5-year program to train 20,000 science and technology professionals in these areas.

In addition to teaching Open Science in the [ALTa CA cohorts](https://www.metadocencia.org/en/formacion/), **MetaDocencia is developing the contextualization of the NASA-TOPS Open Science 101 material for Spanish-speaking Latin America**. This effort involves crafting a translation sensitive to local and regional cultural diversity for the course modules, tailored to the Latin American context. It includes assessing the existing material and rethinking experiences, challenges, practical limitations, and the scope and implications of Open Science in Latin America.

Thus, we began 2024 by [defining the concept that would best represent the work to be done](https://www.metadocencia.org/en/post/2024/20240725-contextualization/). We defined it as "Contextualization," viewing it as one of the pillars of MetaDocencia to guide our efforts in developing high-quality resources in Spanish from original material in other languages.

This publication describes how we implemented a community-driven, systematic, and high-quality process that went beyond mere automatic translation or minimal human intervention.

## Preliminary Technical Preparation for Contextualization
Primero definimos un flujo de trabajo para planificar la tarea de contextualización, desde la primera versión de los contenidos en inglés del curso de NASA. Se establecieron las diferentes vías posibles para lograr el objetivo con el resultado propuesto en el plazo esperado, identificando necesidades y riesgos para llegar al proceso que nos permitiría comenzar a implementar cada paso del flujo de trabajo.

This workflow included **selecting the tool to work with the content hosted in a GitHub repository from NASA TOPS**. After analyzing experiences from fellow communities (The Carpentries, rOpenSci, and The Turing Way), we determined the convenience of using a localization management platform called [Crowdin](https://crowdin.com/). This tool provides translation features that the collaborative team can revise and store as suggestions for future translations of the same text.

The two main reasons for its selection were that it allows community members to join in the translation process and can be integrated with [GitHub](http://github.com) (a platform for hosting projects using the Git version control system). The latter was essential because the original material was hosted on GitHub, which would also be the destination for the contextualized material. A secondary but key reason, especially in low-resource contexts, is that Crowdin is offered free of charge for Open Science and Open Code projects.

Before starting the collaborative work, we conducted pilot tests and verified the integration with the repository where the Spanish version is stored within MetaDocencia's GitHub.


## Collaborative Contextualization
At MetaDocencia, we set out to **experience the collaborative contextualization of the content**. To this end, we launched a specific [call through the Polen Project (in Spanish)](https://doi.org/10.5281/zenodo.12762151) for individuals who had joined MetaDocencia during [2022 (in Spanish)](https://www.metadocencia.org/post/ofertas_laborales/) and [2023 (in Spanish)](https://www.metadocencia.org/post/oferta_laboral_coordi2023/) calls. We also promoted the call during the Open Science Conversations to **extend the opportunity to Spanish-speaking individuals interested in participating in this process**.

**The Contextualization team consisted of 22 participants** who took on translation and review roles. They dedicated three weeks to contextualizing the material and more than three weeks to reviewing the translations. These details were shared during an initial training session, which reviewed the purpose and working mode, along with the community learning that accumulated over the weeks of “learning by doing.”

**In contextualization work, quality not only entails a correct translation of the content but also its adaptation to the regional context to make it accessible and meaningful**. This often requires an in-depth analysis of the content to be contextualized and the selection of appropriate variants to ensure the final information is comprehensible. Throughout this process, questions and answers may arise at any point in the ongoing project, providing clarity for multiple individuals involved in contextualization. It often also identifies necessary changes in the original material.

As part of the resources provided to the contextualization team, a guide was presented explaining the use of the tools and general project guidelines. The aim was to ensure that the contextualization process yields lasting and reusable information, with the guide serving as a means to democratize information related to various translation decisions.

Additionally, an initial glossary (a spreadsheet in our cloud storage with internally agreed-upon terms) was provided to begin the contextualization work. This glossary is a living document that was enriched with contributions and agreements throughout the process and will continue to grow and guide other contextualization projects.

Both the guide and the glossary will be published as soon as they are completed!

Questions that arose during the process were channeled [through Slack](https://w3id.org/metadocencia/slack) to enable the entire team to participate and stay informed of the latest decisions. This tool was used to achieve consensus on identifying and defining the use of specific terms and to avoid ambiguities. These consensuses were documented in the glossary for future reference and documentation.


<p align="center">
<img src="https://www.metadocencia.org/context-colab1.jpg" alt="Example of a Slack Message During the Contextualization Process at MetaDocencia" width="600px"/>
<i><font size="-0.6">Example of a Slack Message During the Contextualization Process at MetaDocencia.</font></i>
</p>

In addition to the asynchronous work, we held a one-hour weekly co-working session where we shared experiences or discussed project-related issues.

Among the agreements we reached were formats for translating proper names, maintaining gender neutrality in the translation, frequent terms, technical terms, punctuation, the use of capitalization, and special characters that vary from one language to another.

The review work involved approving translations made by other team members or making necessary corrections and approving them on the Crowdin platform. It also included verifying links to websites in the text, correcting them if errors were detected, or suggesting more suitable alternatives for the Spanish-speaking context.

<p align="center">
<img src="https://www.metadocencia.org/context-colab2.jpg" alt="Another Example of Using Slack to Build Translation Agreements on Gender-Neutral Spanish." width="600px"/>
<i><font size="-0.6">Another Example of Using Slack to Build Translation Agreements on Gender-Neutral Spanish.</font></i>
</p>

In parallel, we conducted a collaborative internal effort involving members of the Contextualization, Infrastructure, and Communication teams, along with the NASA TOPS team, to contextualize the images. The Contextualization team started by reviewing the images in the English version to identify which ones contained English text and, among them, which needed to be contextualized. They then extracted the text from these images, with the help of the Infrastructure team. Finally, the text was contextualized via Crowdin and made available to the Communication team for editing the images, which were subsequently uploaded to the repository. 
Together with the NASA TOPS team, we verified that the modified images had licenses that allowed the changes.

**During this collaborative process, we contextualized 87,493 words and 58 images, and we conducted two iterations of the contextualization process: initial translation and first review, completed within two months.**

We are currently conducting a final edit of the content, adjusting the last details to complete the first iteration: this involves a comprehensive and detailed review to identify issues that may have arisen with the loading of images, unifying titles and content anchors, ensuring that the overall content makes sense, and, among other things, standardizing translation agreements, as each person worked on isolated portions of the content.

**Our greatest expectation is that the journey we have undertaken will contribute to strengthening the content by considering regional knowledge and experiences, as well as a collaborative network of Spanish-speaking individuals and working groups.** 

We would like to **especially recognize and thank our Contextualization team**, made up of internal and external collaborators who combined their efforts and learnings to enrich the teaching and learning of Open Science in Spanish in this first iteration (in alphabetical order by first name):

- [Alejandra Daniela Calero](https://www.metadocencia.org/en/authors/acalero/)
- [Ariel Silvio Norberto Ramos](https://www.metadocencia.org/en/authors/aramos/)
- [Gastón Klocker](https://www.metadocencia.org/en/authors/gklocker/)
- [Jeremías Fabiano](https://www.metadocencia.org/en/authors/jfabiano/)
- [Juan Pablo Barreyro](https://www.metadocencia.org/en/authors/jbarreyro/)
- [Julián Buede](https://www.metadocencia.org/en/authors/jbuede/)
- [Julieta Millán](https://www.metadocencia.org/en/authors/jmillan/)
- [Julio Zetter Patiño](https://www.metadocencia.org/en/authors/jzetter/)
- [Karina Formoso](https://www.metadocencia.org/en/authors/kformoso/)
- [María Belén Allasia](https://www.metadocencia.org/en/authors/mallasia/)
- [María Cristina Nanton](https://www.metadocencia.org/en/authors/mcnanton/)
- [María Jimena Vera](https://www.metadocencia.org/en/authors/mvera/)
- [Nicolás Palopoli](https://www.metadocencia.org/en/authors/npalopoli/)
- [Laura Ación](https://www.metadocencia.org/en/authors/lacion/)
- [Pablo Vázquez](https://www.metadocencia.org/en/authors/pvazquez/)
- [Vanesa Ruiz](https://www.metadocencia.org/en/authors/vruiz/)
- [Vanina Varni](https://www.metadocencia.org/en/authors/vvarni/)
- [Jose Luis Villca Villegas](https://www.metadocencia.org/en/authors/jlvillca/)
- [Paola Andrea Lefer](https://www.metadocencia.org/en/authors/plefer/)
- [Romina Pendino](https://www.metadocencia.org/en/authors/rominapendino/)
- [Sabrina López](https://www.metadocencia.org/en/authors/slopez/)
- [Verónica Xhardez](https://www.metadocencia.org/en/authors/vxhardez/)

## Acknowledgments
This publication was made possible by a grant from the Chan Zuckerberg Initiative (DOI: 10.5281/zenodo.7386372), NASA grants 80NSSC23K0854 (DOI: 10.5281/zenodo.8215455), 80NSSC23K0857 (DOI: 10.5281/zenodo.8250978), and 80NSSC23K0861 (DOI: 10.5281/zenodo.8212072), as well as grant DAF2021-239366 and grant DOI https://doi.org/10.37921/522107izqogv from the Chan Zuckerberg Initiative DAF, a donor-advised fund of Silicon Valley Community Foundation (Funder DOI 10.13039/100014989), and the grant “Open Cloud Collaborative Project for Latin America and Africa (the Catalyst Project)” from the same funder (DOI: https://doi.org/10.5281/zenodo.8431422).

---

*Did you like this post? You can freely reuse it under the license CC by 4.0; you just have to cite it.* 

This is the quote that we recommend you use to reference it: Alejandra Daniela Calero, Irene Vazano, Laura Ación, Laurel Ascenzi, María Jimena Vera, Nicolás Palopoli, Pablo Vázquez, Sabrina López, Vanesa Romina Ruiz, Verónica Xhardez (2024). The Collaborative Experience of the First Contextualization into Spanish of the Introductory Open Science Course Developed by NASA. Zenodo. https://doi.org/10.5281/zenodo.13753707
