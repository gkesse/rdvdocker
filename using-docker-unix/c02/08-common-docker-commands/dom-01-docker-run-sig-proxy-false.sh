#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# désactive le drapeau (--sig-proxy)
docker run --sig-proxy=false ...
