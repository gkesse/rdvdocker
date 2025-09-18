#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste tous les dockers eteints ou en cours d'exécution
docker ps -a
