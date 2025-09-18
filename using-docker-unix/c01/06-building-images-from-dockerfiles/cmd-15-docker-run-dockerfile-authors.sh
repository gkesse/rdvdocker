#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (gkedoc/cowsay)
# génère un message avec (fortune)
# affiche une image ascii avec (cowsay)
docker run gkedoc/cowsay
