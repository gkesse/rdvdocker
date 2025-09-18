#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre le docker (cowsay)
docker start cowsay
