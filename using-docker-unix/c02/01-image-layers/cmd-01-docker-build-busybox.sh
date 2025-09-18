#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée l'image docker (echotest)
cd 01-busybox && docker build -t echotest .
