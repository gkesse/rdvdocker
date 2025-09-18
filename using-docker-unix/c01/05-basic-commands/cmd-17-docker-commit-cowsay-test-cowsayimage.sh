#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée l'image (cowsayimage)
# du docker (cowsay) dans le dépôt (test)
docker commit cowsay test/cowsayimage
