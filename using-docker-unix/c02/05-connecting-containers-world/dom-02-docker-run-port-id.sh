#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image du serveur (nginx) sur le port spécifié
# détermine automatiquement le port de recdirection sur l'hôte
ID=$(docker run -d -P nginx)
docker port $ID 80

# affiche le port de redirection
0.0.0.0:32771

# télécharge la page spécifiée
curl localhost:32771

# affiche les résultats
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
