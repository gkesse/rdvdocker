#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")/..
cd $root

# clone le dépôt spécifié
git clone https://github.com/gkesse/rdvdocker.git

# affiche l'état du dépôt
# affiche tous les fichiers
git status -u

# indexe un répertoire
git add /path/to/folder/

# indexe les fichiers avec l'extension spécifiée
git add /path/to/folder/*.ext
