#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# visualise l'ensemble de couches (mongodb)
docker history mongo:latest
