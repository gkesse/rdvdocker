#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# liste toutes les commandes saisies sur le docker spécifié
# affiche les informations de journalisation sur uwsgi
docker logs $(docker ps -lq)
