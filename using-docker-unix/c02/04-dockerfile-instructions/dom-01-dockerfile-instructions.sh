#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# copie des fichiers dans le contexte de compilation
ADD

# copie des fichiers du contexte de compilation vers l'image
# utilise le format: src dst
# utilise le format: ["src", "dst"]
COPY

# exécute une commande au démarrage du docker
# utilise les paramètres de démarrage comme entrée
# utilise les paramètres de l'instruction (CMD) comme entrée
ENTRYPOINT

# crée la variable d'environnement spécifié dans l'image
ENV MY_VERSION 1.3
...
RUN apt-get install -y mypackage=$MY_VERSION
...

# écoute le port spécifié au démarrage du docker
# expose le port spécifié au démarrage du docker
EXPOSE
...
docker run -P port

# définit l'image de base du docker
# est la première instruction d'un fichier Dockerfile
FROM IMAGE:TAG
FROM IMAGE
FROM debain:wheezy

# définit le mainteneur de l'image
# est obsolète et en cours de dépréciation
# est remplacé par l'instruction (LABEL)
MAINTAINER Author <youremail@domain.com>

# définit le maintaineur de l'image
# est en cours d'utilisation
# remplace l'instruction (MAINTAINER)
LABEL authors="Author <youremail@domain.com>"

# définit une commande à exécuter
# lorsque l'image sera utilisée comme image de base
ONBUILD

# exécute la commande spécifiée dans le docker
# enregistre les résultats de la commande spécifiée
RUN COMMAND

# définit le nom de l'utilisateur
USER

# monte le volume spécifier dans l'image
VOLUME

# définit le répertoire de travail
# peut être défini plusieurs fois
# complète les chemins relatifs des instructions suivantes
WORKDIR

# exécute une commande au démarrage du docker
# alimente l'instruction (ENTRYPOINT) comme entrée
CMD
