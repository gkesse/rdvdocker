#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# rend exécutable le script d'installation de docker
chmod a+x /tmp/install.sh
