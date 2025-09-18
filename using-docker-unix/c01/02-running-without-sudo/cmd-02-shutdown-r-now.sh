#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# redémarre le système
# prend en compte les nouvelles configuration de docker
sudo shutdown -r now
