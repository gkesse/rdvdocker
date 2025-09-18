#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# redirige le port hôte (9090) sur le port docker (9090)
# redirige le port hôte (9191) sur le port docker (9191)
docker run -d -p 9090:9090 -p 9191:9191 identidock
