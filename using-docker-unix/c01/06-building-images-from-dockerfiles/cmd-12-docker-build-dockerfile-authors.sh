#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée l'image docker (gkedoc/cosway)
cd 04-dockerfile-authors && docker build --no-cache -t gkedoc/cowsay .
