#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche un message (hello world)
# avec une image ascii (cowsay)
/usr/games/cowsay "hello world"
