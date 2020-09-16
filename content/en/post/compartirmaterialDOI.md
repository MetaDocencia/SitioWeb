---
date: "2020-09-01"
draft: false
type: page
linktitle: Share educational material and maintain authorship.
summary: Sharing your educational material so that others can use it is a powerful and generous idea. In this post we tell you how to do it while maintaining your authorship.
title: Share educational material and maintain authorship.
authors: 
    - yabellini
type: post
weight: 1
tags: 
  - share
  - open education
  - technical tips
---

As detailed in [[1]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005963) generating educational material requires a significant effort both for its initial development and to keep it updated.

Although there is the _reusability paradox_ [[2]](https://opencontent.org/blog/archives/3854) - [[3]](https://opencontent.org/blog/archives/6585) which postulates that a teaching material will be more reusable when it is as generic as possible and more effective when it is personalized for a particular audience in a particular context [[4]](https://third-bit.com/2015/04/22/the-paradox-of-learning-objects.html); sharing our material in a way that other people can _find it, **use it**, improve it, and **cite it**_ is an activity worth the effort.

With the advent of forced virtuality due to COVID-19, many teachers have found it necessary to share their material in a digital format, in addition to having to adapt some part of it.

Both in [[1]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005963) and [[5]](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1006915#pcbi.1006915.ref009), it is mentioned that treating the lessons as a community resource to be gradually updated, adapted and improved can _increase the quality of educational material and free up valuable time for teachers in designing their own material_. Not only would we be helping our colleagues, but we can also add benefits for students who can access our material at no cost and when they need it. Finally we would have a citable product, that is, we could ask for and obtain credit for the material that we have developed, and we could also know who is using this material and where.

_So if I want to share my didactic material, how do I do it? Keep reading and we will tell you_

## Three simple steps to share lessons

* **Step 1: select an open license** that makes it clear how to use the material. The most used licenses are known as [Creative Commons](http://www.creativecommons.org.ar/licencias.html) licenses.  There are different types of licenses depending on what we want the user of our materials to be able to do with them. If we do not know very well which license best suits our needs, there is a [license selector](https://creativecommons.org/choose/?lang=es_AR) that can help us.

If our material has code in a programming language, then we must also select an [open license, designed for software](https://www.gnu.org/licenses/license-list.html#SoftwareLicenses).  I suggest the license [MIT](https://opensource.org/licenses/MIT) or, considering the impact that software and data science have on our lives, the [Hippocratic license](https://firstdonoharm.dev/), that allows the code to be freely used as long as the user is not violating basic human rights treaties.

* **Step 2: store the material in a repository that allows us to publish it.** One place that allows us to do this is [GitHub](https://github.com/) which is used to develop a variety of materials because it allows us to have different types of content such as slides, documents, source code, images, and also allows us to continuously develop them through an iterative process and with input from others, since GitHub implements a [version control system](https://es.wikipedia.org/wiki/Control_de_versiones). If you haven't used GitHub, you can use this [initial Git tutorial](https://yabellini.netlify.app/es/courses/tallerdegitconr/).

* **Step 3: add a [digital object identifier (DOI)](https://es.wikipedia.org/wiki/Identificador_de_objeto_digital) so that it is citable.** We will describe this step in great detail by following these [GitHub instructions](https://guides.github.com/activities/citable-code/).

    * Navigate to [Zenodo](https://zenodo.org/), press the Login button at the top right of the page, and select the option to log in with your GitHub account.
   {{< figure src="/img/screen1.png" >}}

    * We must _authorize the application_ to grant Zenodo the permissions it needs to be able to assign a DOI to your repository.
    {{< figure src="/img/screen2.png" >}}

    * After confirming that it is our account (we will receive an email), we will be logged into Zenodo and in the upper right corner our email associated with GitHub appears, if we click on the triangle a menu is displayed where we select GitHub:  
    {{< figure src="/img/screen3.png" >}}

    
    * Now, choose the repository you want to archive. To enable this functionality we click on the Activate button next to the repository (in this case GEE_course_code). The repository must be _public_.

    {{< figure src="/img/screen4.png" >}}

    * We must verify that the repository configuration to send messages to Zenodo was successful, for that we click on the configuration tab in your repository and then click on _Webhooks_ in the menu on the left. You should see a screen similar to the following image:

    {{< figure src="/img/screen5.png" >}}

    * Create a new version: Zenodo archives your repository every time you generate a new version. For this we return to the main view of the repository and in the menu on the right we click on _create new release_.
    {{< figure src="/img/screen6.png" >}}
   
    * We must fill in the version of this _release_, the title, and the description, and then press the button _publish release_, as shown in the following figure.
    {{< figure src="/img/screen7_en.png" >}}

    * Now we are going to obtain the DOI, for that we must return to Zenodo and click on _Upload_ where it will show us the different materials that we have published in Zenodo. If we click on the name, it shows us all the details, we can edit the information, and if we go down on the page to the right it shows us the DOI and a suggested cite.
    {{< figure src="/img/screen8_en.png" >}}


Done, now we have the DOI and the "cite as" that we can add to our repo and ask those who use our materials to use, to mention us.

> Thanks to [Silvia Canelón](https://twitter.com/spcanelon) for review the English in this post.
