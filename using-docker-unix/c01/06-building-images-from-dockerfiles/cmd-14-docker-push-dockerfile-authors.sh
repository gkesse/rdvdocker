#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# pousse l'image docker (gkedoc/cosway)
# associe le tag (stable)
docker push gkedoc/cowsay:stable
