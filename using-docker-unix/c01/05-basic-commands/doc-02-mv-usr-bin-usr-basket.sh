#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# renomme le répertoire (bin) en (basket)
mv /usr/bin /usr/basket
