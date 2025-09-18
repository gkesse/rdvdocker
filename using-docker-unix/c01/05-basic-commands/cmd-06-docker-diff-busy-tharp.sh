#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre l'inspection du docker (busy_tharp)
# affiche l'adresse ip du docker (busy_tharp)
docker diff busy_tharp
# (D) indique un répertoire supprimé
# (A) indique un répertoire ajouté
