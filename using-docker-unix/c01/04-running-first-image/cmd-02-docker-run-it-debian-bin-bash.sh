#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre un conteneur docker avec une image debian
# se connecte à un terminal
docker run -i -t debian /bin/bash
