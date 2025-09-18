#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié depuis (docker-compose.yml)
cd identidock && docker-compose up
