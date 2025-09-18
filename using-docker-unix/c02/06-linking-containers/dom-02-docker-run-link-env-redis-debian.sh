#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker spécifié (debian)
# crée un lien avec l'image docker (myredis:redis)
# affiche les variables d'environnement (env)
docker run --link myredis:redis debian env

