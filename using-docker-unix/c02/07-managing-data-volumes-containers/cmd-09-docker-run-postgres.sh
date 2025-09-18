#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker (dbdata:postgres)
# exécute les volumes du docker (dbdata)
docker run --name dbdata postgres echo "Data-only container for postgres"
