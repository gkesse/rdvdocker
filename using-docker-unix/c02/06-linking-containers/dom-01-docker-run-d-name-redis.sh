#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker spécifié en arrière plan (-d)
# attribue le nom spécifié à l'image docker (--name)
docker run -d --name myredis redis
