#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# redirige le port hôte (5000) sur le port docker (5000)
# monte le volume hôte (app) en tant que volume docker (app)
docker run -d -p 5000:5000 -v ${root}/identidock/app:/app identidock
