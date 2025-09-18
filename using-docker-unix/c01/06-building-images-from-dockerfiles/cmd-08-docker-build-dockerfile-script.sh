#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée l'image docker (cosway-dockerfile) dans le dépôt (test)
cd 03-dockerfile-script && docker build --no-cache -t test/cowsay-dockerfile .
