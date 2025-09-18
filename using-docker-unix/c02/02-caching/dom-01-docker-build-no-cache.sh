#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# invalide le cache de construction du docker
# reconstruit l'image du docker
docker build --no-cache
