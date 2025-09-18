#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche un message (fortune)
# avec une image ascii (cowsay)
/usr/games/fortune | /usr/games/cowsay
