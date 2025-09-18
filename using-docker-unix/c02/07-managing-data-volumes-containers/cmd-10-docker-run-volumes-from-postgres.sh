#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker (postgres) en arrière plan
# récupère les volumes du docker (dbdata)
docker run -d --volumes-from dbdata --name db1 postgres
