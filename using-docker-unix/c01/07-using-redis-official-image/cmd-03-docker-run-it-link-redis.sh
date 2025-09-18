#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# lance un terminal (bash)
# se connecte au serveur (redis)
docker run --rm -it --link myredis:redis redis /bin/bash
