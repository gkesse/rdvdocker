#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (debian)
# associe le nom d'hôte (CONTAINER)
# associe le nom d'image (container-test)
# récupère le terminal (bash) de l'image
docker run -it --name container-test -h CONTAINER gkedoc/test /bin/bash
