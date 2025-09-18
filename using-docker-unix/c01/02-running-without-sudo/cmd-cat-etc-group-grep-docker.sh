#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche la liste des groupes du système
# filtre la liste avec l'expression (docker)
cat /etc/group | grep docker
