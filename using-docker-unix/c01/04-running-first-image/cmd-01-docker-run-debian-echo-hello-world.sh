#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre un conteneur docker avec une image debian
# exécute une commande echo
# affiche un message de bienvenue
# ferme le conteneur de docker
docker run debian echo "Hello World"
