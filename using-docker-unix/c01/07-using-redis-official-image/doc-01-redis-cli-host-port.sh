#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# lance un client (redis)
redis-cli -h redis -p 6379
