#!/bin/bash

# arrête le script en cas d'erreur
set -e

# est un environnement de dev
if [ "$ENV" = 'DEV' ]; then
    echo "Running Development Server"
    # exécute la commande spécifiée
    exec python "identidock.py"
# est un environnement de production
else
    echo "Running Production Server"
    # exécute la commande spécifiée
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py \
    --callable app --stats 0.0.0.0:9191
fi
