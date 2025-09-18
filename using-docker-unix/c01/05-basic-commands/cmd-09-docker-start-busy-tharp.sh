#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# redémarre le docker (busy_tharp)
docker start busy_tharp
