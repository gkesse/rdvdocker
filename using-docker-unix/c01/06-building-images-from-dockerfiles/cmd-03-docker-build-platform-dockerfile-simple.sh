#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée l'image docker (cosway-dockerfile) dans le dépôt (test)
cd 01-dockerfile-simple && docker build --no-cache --platform linux/arm64 -t test/cowsay-dockerfile .
