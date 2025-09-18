#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# ajoute l'utilisateur courant au groupe docker
sudo usermod -aG docker $USER
