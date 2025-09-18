#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre un conteneur docker avec une image debian
# se connecte à un terminal avec le nom de machine (CONTAINER)
docker run -h CONTAINER -i -t debian /bin/bash
