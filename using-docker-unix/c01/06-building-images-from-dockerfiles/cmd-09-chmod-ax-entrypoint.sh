#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# rend exécutable le script (entrypoint)
cd 03-dockerfile-script && chmod a+x entrypoint.sh
