#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste le contenu du répertoire de données docker
ls  ~/.docker
