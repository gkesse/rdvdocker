#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre l'inspection du conteneur (busy_tharp)
docker inspect busy_tharp
