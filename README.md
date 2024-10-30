# Experimenting with GitHub Pages

This is a personal experimentation for hosting a small static site on GitHub pages using Jekyll and the [GCWeb theme](https://github.com/wet-boew/gcweb-jekyll).

The purpose is to understand:

1- how to create a local dev environmnet using containers (Docker)
2- how to use Jekyll's static site generator features
3- how to modify a Jekyll's site theme

Demonstrating the use of containers will help educate fellow colleagues of how one can abstract the infrastructure layer, making it easier for developers to manage multiple applications in the many environments, as well as making it easier to port those applications to different environments (public cloud, data centres)

Demonstrating the use of Jekyll's static site generator features will help educate fellow colleagues on how modern web development practices have evolved (from servers that render each requests, to one that periodically re-generate changed content drastically increasing performance), as well as simplifying HTML editing.

Demonstrating the use of Jekyll themes will help educate fellow colleagues on how modern web development practices separates the design layer from the content. This greatly reducing the manual efforts to change designs when a new GC direction happens and makes it easier to comply with [GC's Web Accessibility Standards](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=23601) by re-using investments other have made.
