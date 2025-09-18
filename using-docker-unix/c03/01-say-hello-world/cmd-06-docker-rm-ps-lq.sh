#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# supprime le dernier docker
docker rm $(docker ps -lq)
