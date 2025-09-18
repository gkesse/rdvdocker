#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# n'affiche pas l'aide de la commande (ps)
docker ps --help=false
