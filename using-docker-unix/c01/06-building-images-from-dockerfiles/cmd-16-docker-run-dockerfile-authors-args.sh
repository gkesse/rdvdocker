#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (gkedoc/cowsay)
# affiche un message (Hello Moo)
# affiche une image ascii avec (cowsay)
docker run gkedoc/cowsay -f tux "Hello Moo"
