#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# on supprime le docker (db1) avec les volumes
docker rm -v db1
