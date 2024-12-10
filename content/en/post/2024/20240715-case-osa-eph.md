---
date: "2024-07-16"
draft: false
type: page
linktitle: EPH Case of Study
summary: "The following case aims to exemplify the virtuous process of reusing public data by developing open tools."
title: "Open Science in Action: Permanent Household Survey Case"
authors:
  - dburin
  - vxhardez
  - Carolina Trogliero
type: post
weight: 1
tags: 
  - MetaDocencia 
categories:
  - Topics
---

**Open Science is an umbrella term for a set of practices that make research products and processes transparent and available to everyone.**. There is no single way to conduct Open Science, as it will depend on each project’s scope and limitations, stakeholders, available resources, and other factors.

The following case aims to exemplify the **virtuous process of reusing public data by developing open tools, employing them in knowledge production by academic research and other communities, and contributing to public policies.**

## The Permanent Household Survey (Encuesta Permanente de Hogares, EPH), the eph R package and their role in academic research, community activism, and public policy

As in other countries worldwide and in Latin America, Argentina has a public technical organization within the Ministry of Economy that coordinates and produces demographic, economic, and social statistics: The National Institute of Statistics and Censuses ([INDEC](https://www.indec.gob.ar/indec/web/Institucional-Indec-QuienesSomosEng)).

Among other outputs, INDEC conducts the Permanent Household Survey (Encuesta Permanente de Hogares, [EPH](https://www.indec.gob.ar/indec/web/Institucional-Indec-QuienesSomosEng)), a continuous national sampling  program with quarterly results. The EPH is a systematic and continued program covering the entire national territory ([presentation video](https://www.youtube.com/watch?v=FpLA775mlxw) in Spanish). The people conducting the EPH survey visit almost 120,000 households in person, obtaining sociodemographic and socioeconomic data: employment, unemployment, job insecurity, poverty, destitution, education, income, migration, housing, and living conditions. The survey’s data provide, among other results, official rates of employment, unemployment, underemployment, and poverty. The results’ reports are complemented by aggregated information, and available for download.

A multidisciplinary research team external to INDEC ([Tiscornia et al., 2019](https://zenodo.org/records/3462678), [Kozlowski et al., 2020](https://zenodo.org/records/3720104); [Pradier et al., 2023](https://zenodo.org/records/8352221)) has created an analytic tool using the [R](https://cran.r-project.org/web/packages/eph/eph.pdf) programming language: the [eph library (Spanish)](https://ropensci.github.io/eph/index.html). It was created in 2019 ([presentation video](https://www.youtube.com/watch?v=WxtiAOeGBi8) in Spanish) and has been maintained, updated, and enhanced with new functions up to this day. This R package enables processing of EPH data, in order to reproduce  or obtain independent conclusions from those published by the INDEC, and to analyze different categories and indexes not provided in the official reports.

The package facilitates academic and journalistic research since EPH information is one of the primary sources for analyzing the country’s social issues. It contributes to the formulation of evidence-based public policies.

As for its role in academic research, for example, it has led to academic papers about the relationship between labor market insertion and access to the healthcare system between 2004 and 2020 ([Pradier, 2021](http://www.scielo.org.ar/scielo.php?pid=S2545-77562021000100090&script=sci_abstract&tlng=en)); the evolution of Argentina’s labor force reproduction between 2016 and 2019 ([Kennedy et al., 2023](http://www.scielo.org.ar/scielo.php?pid=S1852-16062023000200208&script=sci_abstract&tlng=en)); methodological issues regarding the relationship between education and wages ([Martínez Iriarte, 2022](http://www.scielo.org.ar/scielo.php?script=sci_abstract&pid=S2525-12952022000100005&lng=es&nrm=iso&tlng=en)). It has also been employed in postgraduate theses, such as methodological and statistical issues in measuring the dimensionality of well-being ([Brau, 2021](http://hdl.handle.net/10908/22978)), among others.

As for its contribution to community outreach and public policies, for example, it has been employed by the civil association [Ecofeminita](https://ecofeminita.com/?v=5b61a1b298a0)’s data team, [Ecofemidata](https://ecofeminita.com/ecofemidata/?v=5b61a1b298a0), to provide data on gender inequality with reproducible indicators, statistics, and thematic reports. Among other uses, the Ecofemidata team maintains an [app](https://ecofeminita.com/app-ecofemidata/?v=5b61a1b298a0) that analyzes the labor market, income, time use, and domestic work. Thus, open data and analytic code availability are essential inputs in their efforts to highlight gender inequalities. Ecofeminita has developed outreach materials (for schools, media, and social networks) and provides advice on public policies at different government levels, which are partly allowed by these open tools.

And this is not the only experience. Programmers, data scientists, and people from various disciplines have developed the PyEPH library in Python ([Trogliero et al., 2022](https://zenodo.org/records/6727908)), similar to the *eph* package but in the Python programming language. 

The [PyEPH library](https://pyeph.readthedocs.io/es/latest/) aims to facilitate processing of INDEC's EPH data in Python. As the eph package, it constitutes a tool to centralize and consolidate the surveys’ analyses for research and publications. It emphasizes methodological transparency using open-source licenses and promotes collaboration among communities and individuals involved in data science, social sciences, research, development, journalism, or anyone interested. It allows to elaborate indexes related to the labor market, poverty, destitution, and others, as well as merging other databases compatible with EPH. The library is bilingual in Spanish/English and is primarily maintained by its creators, with contributions from the Python community.

## The Importance of Communities of Practice
The *eph* package in R and the PyEPH library in Python were created by individuals who frequented R and Python communities of practice. In the case of eph, the [R-Ladies Buenos Aires](https://rladiesba.netlify.app/), [R Buenos Aires](https://renbaires.github.io/) and [LatinR](https://latin-r.com/) communities were where idea exchanges about eph flourished throughout its development. Similarly, those who created PyPHS also consulted with those involved with *eph*. **This is another example of how fruitful it is to nurture and sustain communities of practice that drive inclusive collaboration and values that deeply resonate with MetaDocencia.**

## Acknowledgements
This publication was made possible by a grant from the Chan Zuckerberg Initiative (DOI: [https://zenodo.org/doi/10.5281/zenodo.7386372](https://zenodo.org/doi/10.5281/zenodo.7386372)), NASA grants 80NSSC23K0854 (DOI: [https://zenodo.org/doi/10.5281/zenodo.8215455](https://zenodo.org/doi/10.5281/zenodo.8215455)), 80NSSC23K0857 (DOI: [https://zenodo.org/doi/10.5281/zenodo.8250978](https://zenodo.org/doi/10.5281/zenodo.8250978)) and 80NSSC23K0861 (DOI: [https://zenodo.org/doi/10.5281/zenodo.8212072](https://zenodo.org/doi/10.5281/zenodo.8212072)), and grant DAF2021-239366 and grant DOI [https://doi.org/10.37921/522107izqogv](https://doi.org/10.37921/522107izqogv) from the Chan Zuckerberg Initiative DAF, an advised fund of Silicon Valley Community Foundation (funder DOI 10.13039/100014989), and the "Open Cloud Collaborative Project for Latin America and Africa (the Catalyst Project)" grant from the same funder (DOI: [https://doi.org/10.5281/zenodo.8431422](https://doi.org/10.5281/zenodo.8431422))).

---

*Did you like this post? You can freely reuse it under the license CC by 4.0; you just have to cite it.* 
This is the quote that we recommend you use to reference it:
Débora Inés, B., Xhardez, V., & Trogliero, C. (2024). Open Science in Action: Permanent Household Survey Case. Zenodo. https://doi.org/10.5281/zenodo.13256234
