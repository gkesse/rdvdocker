#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste les containeurs en cours d'exécution sur le système
docker ps
