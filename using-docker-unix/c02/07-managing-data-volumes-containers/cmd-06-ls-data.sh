#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste le contenu du volume de l'hôte
sudo ls /var/lib/docker/volumes/294ecf98b419cb59f95e08d82d7527c312d10712735403e05d33af745e9a000f/_data
