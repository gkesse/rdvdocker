#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste tous les dockers éteints
docker ps -aq -f status=exited
