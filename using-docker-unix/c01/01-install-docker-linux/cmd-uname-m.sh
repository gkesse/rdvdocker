#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# affiche le nombre de bits du système (32 ou 64-bit = 64-bit)
uname -m
