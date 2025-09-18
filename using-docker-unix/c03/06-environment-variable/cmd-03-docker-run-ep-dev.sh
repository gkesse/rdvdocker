#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# demande le mappage automatique de port
docker run -e "ENV=DEV" -p 5000:5000 identidock
