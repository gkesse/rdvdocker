#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# récupère l'image docker (gkedoc/cosway)
docker pull gkedoc/cowsay
