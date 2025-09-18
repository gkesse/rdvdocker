#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre le démon docker
# empêche les communication avec les images non liées
docker daemon --icc=false --iptables
