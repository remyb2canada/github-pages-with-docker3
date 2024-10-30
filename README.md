# Experimenting with GitHub Pages

## About this repo

This is a personal experimentation for learning and educating other colleagues on the use of Docker, Jekyll, Web Design (templates), and Open Source Community mindset (sharing work with others).

The experiment is about hosting a small static site on GitHub pages with Jekyll using the [GCWeb theme](https://github.com/wet-boew/gcweb-jekyll).

The purpose is to understand:

1. how to create a local dev environmnet using containers (Docker), isolated from the the host machine's own configurations
2. how to use Jekyll's static site generator features
3. how to modify a Jekyll's site theme
4. what are the software dependencies that make everything run "like magic"

Demonstrating the use of containers will help educate fellow colleagues the benfits of abstracting an infrastructure layer. This to make making it easier for developers to manage multiple applications in the many environments, reducing conflicts between them, and making it easier for operations team to port those applications outside of legacy data centres (i.e. the public cloud or SSC's Enterprise Data Center).

Demonstrating the use of Jekyll's static site generator features will help educate fellow colleagues on how modern web development practices have significantly evolved: from application servers that render each requests before responding to one that periodically re-generate changed content and, therefore, drastically increase performance; and simplyfying HTML editing.

Demonstrating the use of Jekyll themes will help educate fellow colleagues on how modern web development practices separate the design layer from its content. This greatly reducing the manual efforts to change designs when a new GC direction happens (e.g. change of parliament), makes it easier to comply with [GC's Web Accessibility Standards](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=23601), and makes it easier to re-use efforts (investments) of others.

## Materials used to get up to speed

* [Bill Raymond's tutorial](https://gist.github.com/BillRaymond/db761d6b53dc4a237b095819d33c7332)
* [GitHub Docs on GitHub Pages withi Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll)
* [Hack for LA's repository](https://github.com/hackforla/ghpages-docker/tree/main)
* [GC's WET-BOWE GitHub organization and associated repositories](https://github.com/wet-boew/gcweb-jekyll)

## Other sources of information used to learn

* [Mistral GenAI's LeChat](https://mistral.ai/)
* [Visual Studio Code Tutorial](https://code.visualstudio.com/docs/devcontainers/containers)
* [Jekyll's own documentation](https://jekyllrb.com/docs/themes/)
* [Docker's own documentation](https://docs.docker.com/reference/cli/docker/container/run/)
* [Google search often leading to stackoverflow post](https://stackoverflow.com/questions/31327045/switch-theme-in-an-existing-jekyll-installation)
