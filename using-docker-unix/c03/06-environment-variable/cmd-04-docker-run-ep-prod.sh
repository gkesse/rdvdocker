#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# réalise le mappage manuel de ports
docker run -p 9090:9090 -p 9191:9191 identidock
