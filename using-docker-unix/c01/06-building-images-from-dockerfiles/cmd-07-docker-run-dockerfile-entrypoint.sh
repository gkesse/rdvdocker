#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (cosway-dockerfile) dans le dépôt (test)
# affiche un message (Moo) avec une image ascii (cowsay)
docker run test/cowsay-dockerfile "Moo"
