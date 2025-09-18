#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# installe les packages (cowsay, fortune) sur le docker
apt install -y cowsay fortune
