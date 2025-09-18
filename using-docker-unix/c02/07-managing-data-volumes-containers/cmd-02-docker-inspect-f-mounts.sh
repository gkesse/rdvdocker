#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# inspecte le docker (container-test) depuis l'hôte
# filtre l'emplacement des volumes (.Mounts)
docker inspect -f {{.Mounts}} container-test

# affiche les résultats
# [{volume ed7e4d06369673bc8157e6bf45ff2aa256e26f177776c3ea74f382fd393d852d
# /var/lib/docker/volumes/ed7e4d06369673bc8157e6bf45ff2aa256e26f177776c3ea74f382fd393d852d/_data
# /data local  true }]

# étblit un lien entre les 2 répertoires
# hôte: /var/lib/docker/volumes/ed7e4d06369673bc8157e6bf45ff2aa256e26f177776c3ea74f382fd393d852d/_data
# docker: /data
