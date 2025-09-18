#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# récupère l'adresse ip de docker sous windows
# télécharge la ressource spécifiée
curl $(docker-machine ip default):5000

