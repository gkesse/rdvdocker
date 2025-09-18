#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# télécharge la ressource spéciifiée
curl localhost:9090
