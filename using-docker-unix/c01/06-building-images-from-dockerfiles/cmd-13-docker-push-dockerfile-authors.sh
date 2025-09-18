#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# pousse l'image docker (gkedoc/cosway)
# ajoute automatiquement le tag (lastest)
docker push gkedoc/cowsay
