#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# télécharge le script d'installation de docker
curl https://get.docker.com > /tmp/install.sh
