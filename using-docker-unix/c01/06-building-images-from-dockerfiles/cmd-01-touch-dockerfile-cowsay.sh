#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée un fichier (dockerfile)
mkdir cowsay
cd cowsay
touch Dockerfile
