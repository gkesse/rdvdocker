#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# sauvegarde la paire de clé/valeur (redis)
set "persistence" "test"