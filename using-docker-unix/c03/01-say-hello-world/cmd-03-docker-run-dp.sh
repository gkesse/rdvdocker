#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# redirige le port (5000) de l'hôte
# vers le port (5000) du docker
docker run -d -p 5000:5000 identidock
