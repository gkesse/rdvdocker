#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# construit le docker spécifié
cd identidock && docker build --no-cache -t identidock .
