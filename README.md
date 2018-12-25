# 3slab Tech Newsletter

Ce projet contient 2 branches :

* [master](https://github.com/3slab/tech-newsletter) : le code source et les outils pour créer une newsletter
* [gh-pages](https://github.com/3slab/tech-newsletter/tree/gh-pages) : la version web des newsletters envoyées

Les newsletters précédemment envoyées sont visibles sur le site [https://tech-newsletter.3slab.io](https://tech-newsletter.3slab.io) grâce à github pages.

## Installation

Le système de newsletter utilise foundation :

```
npm install foundation-cli --global
```

Installer les dépendances locales au projet :

```
npm install
```

Lancer le serveur de développement :

```
foundation watch
```

## Créer une newsletter

Copier le fichier [src/pages/template.html](https://github.com/3slab/tech-newsletter/blob/master/src/pages/template.html) vers `src/pages/YYYYMMDD_NNN.html` :

* `YYYY` : année d'émission de la newsletter
* `MM` : mois d'émission de la newsletter
* `DD` : jour d'émission de la newsletter
* `NNN` : numéro de la newsletter

Modifier l'entête YAML du fichier :

```
---
issue_number: 1
date: 07/01/2019

description: >
  Premier numéro de la newsletter tech du 3slab.
  Cette newsletter (à fréquence variable) proposera une liste de ressources
  ou d'articles intéressants à destination de l'équipe du lab.
  Ce numéro contient un certain nombre de ressources incontournables en javascript.
  Bonne lecture.

articles:
  - type: php
    title: titre de l'article
    link: http://lien-de-l-article
    description: courte description du contenu de l'article
---
```

* `issue_number` : numéro de la newsletter doit correspondre au nom du fichier `NNN`
* `date` : date d'envoi de la newsletter doit correspondre au nom du fichier `YYYYMMDD`
* `description` : courte description pour expliquer le contenu de la newsletter ou mettre en avant une ressource
* `articles` : liste des articles de la newsletter. Voir le chapitre [proposer un article](https://github.com/3slab/tech-newsletter#proposer-un-article)

Ajouter une entrée au menu du fichier [src/pages/index.html](https://github.com/3slab/tech-newsletter/blob/master/src/pages/index.html) :

```
<item href="{{root}}YYYYMMDD_NNN.html" target="_blank">DD/MM/YYYY - n°NNN</item>
```

## Proposer un article

Ajouter une entrée dans le fichier [src/pages/next-release.html](https://github.com/3slab/tech-newsletter/blob/master/src/pages/next-release.html) dans le header YAML à la clé `articles` :

```
articles:
  - type: php
    title: titre de l'article
    link: http://lien-de-l-article
    description: courte description du contenu de l'article
```

* `type` : type d'article, contrôle l'icône qui préfixera le titre de l'article (correspond au nom d'un fichier png dans le dossier [src/assets/img](https://github.com/3slab/tech-newsletter/tree/master/src/assets/img). Valeurs possibles : career, devops, docker, javascript, php)
* `title` : titre de l'article
* `link` : lien vers l'article
* `description` : description courte du contenu de l'article

Faire une pull request avec votre ou vos propositions.

## Déployer la newsletter

Suivre la documentation [Créer une newsletter](https://github.com/3slab/tech-newsletter#creer-une-newsletter) à partir du fichier [src/pages/next-release.html](https://github.com/3slab/tech-newsletter/blob/master/src/pages/next-release.html).

Commiter et pusher.

Lancer le script `deploy.sh`.

Utiliser le fichier HTML généré dans `dist` pour créer votre campagne sur [mailchimp](https://mailchimp.com)

*Powered by [zurb](https://mailchimp.com)*