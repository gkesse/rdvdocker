#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# active le drapeau (--sig-proxy)
# sont équivalentes
docker run --sig-proxy=true ...
docker run --sig-proxy ...
docker run ...
