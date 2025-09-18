#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre le docker (cowsay)
# avec une image debian et un terminal
docker run -it --name cowsay --hostname cowsay debian bash
