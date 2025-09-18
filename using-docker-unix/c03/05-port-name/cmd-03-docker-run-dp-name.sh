#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié en arrière plan
# demande le mappage automatique de port
docker run -d -P --name port-test identidock
