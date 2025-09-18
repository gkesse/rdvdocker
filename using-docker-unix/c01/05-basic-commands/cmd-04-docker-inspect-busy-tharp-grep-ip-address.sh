#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# démarre l'inspection du docker (busy_tharp)
# filtre l'adresse ip du docker (busy_tharp)
docker inspect busy_tharp | grep IPAddress
