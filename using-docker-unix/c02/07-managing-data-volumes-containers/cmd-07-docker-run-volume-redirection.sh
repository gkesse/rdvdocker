#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (debian)
# monte le volume de l'hôte spécifié (data)
# en tant que volume de l'image spécifié (data)
# liste le contenu du volume de l'image (data)
docker run -v ${root}/data:/data debian ls /data
