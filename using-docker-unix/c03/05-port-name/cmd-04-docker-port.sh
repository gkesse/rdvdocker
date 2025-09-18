#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche le mappage de port
docker port port-test
