#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# remplace (World) par (Docker) dans le fichier spécifié
sed -i '' s/World/Docker/ app/identidock.py
