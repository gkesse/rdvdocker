#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (cosway-dockerfile) dans le dépôt (test)
# affiche un message (Hello Moo)
# affiche une image ascii avec (cowsay)
docker run test/cowsay-dockerfile -f tux "Hello Moo"
