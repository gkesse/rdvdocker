#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste toutes les commandes saisies sur le docker (busy_tharp)
docker logs busy_tharp
