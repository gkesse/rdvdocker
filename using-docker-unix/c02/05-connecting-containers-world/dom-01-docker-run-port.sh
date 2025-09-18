#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image du serveur (nginx) sur le port spécifié
# redirige le port de l'hôte (8000) sur le port (80) de l'image
docker run -d -p 8000:80 nginx

# récupère la page d'index
curl localhost:8000

# affiche les résultats
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
