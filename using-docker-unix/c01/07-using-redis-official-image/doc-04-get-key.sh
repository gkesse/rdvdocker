#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# récupère la valeur de la clé (abc)
get "abc"
