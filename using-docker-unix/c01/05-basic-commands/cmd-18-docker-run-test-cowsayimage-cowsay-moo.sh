#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image (cowsayimage) du dépôt (test) du docker (cowsay)
# affiche le message (Moo) avec une image ascii (cowsay)
docker run test/cowsayimage /usr/games/cowsay "Moo"
