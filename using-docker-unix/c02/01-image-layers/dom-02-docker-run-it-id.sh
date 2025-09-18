#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute une des couches fonctionnelles
# lors de la construction d'une image de docker
# à partir de son identifiant
docker run -it 7831e2ca1809
