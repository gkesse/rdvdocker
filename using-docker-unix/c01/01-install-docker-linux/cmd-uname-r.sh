#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche la version du noyau linux (6.8.0 > 3.10)
uname -r
