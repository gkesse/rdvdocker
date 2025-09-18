#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker (test/webserver)
# monte un volume (data) sur le docker
docker run -v /data test/webserver
