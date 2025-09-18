#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche les logs du client (redis)
docker run --rm --volumes-from myredis -v ${root}/backup:/backup \
debian cp /data/dump.rdb /backup/

