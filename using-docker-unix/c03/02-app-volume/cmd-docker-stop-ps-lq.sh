#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# arrête le dernier docker
docker stop $(docker ps -lq)
