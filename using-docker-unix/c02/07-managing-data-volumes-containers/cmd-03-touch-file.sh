#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée un fichier dans le répertoire (data) de l'hôte
sudo touch /var/lib/docker/volumes/ed7e4d06369673bc8157e6bf45ff2aa256e26f177776c3ea74f382fd393d852d/_data/test-file

