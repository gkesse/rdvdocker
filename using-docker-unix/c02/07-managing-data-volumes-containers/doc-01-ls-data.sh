#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste les fichiers du répertoire partagé (data) depuis le docker
ls /data
