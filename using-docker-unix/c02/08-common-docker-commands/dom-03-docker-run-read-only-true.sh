#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# active le drapeau (--read-only)
# sont équivalentes
docker run --read-only=true
docker run --read-only
