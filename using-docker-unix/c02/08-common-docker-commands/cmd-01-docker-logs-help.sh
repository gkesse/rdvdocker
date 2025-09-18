#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche l'aide de la commande (logs)
docker logs --help
