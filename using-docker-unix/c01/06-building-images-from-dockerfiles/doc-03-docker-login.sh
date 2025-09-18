#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

#------------------------------------------------
# connecte l'utilisateur à docker
#------------------------------------------------

# démarre la connexion à docker
docker login

# indique le code confirmation
XXXX-YYYY

# indique le lien de connexion
https://login.docker.com/activate

# saisit le code de confirmation
XXXX-YYYY

# saisit les informations de connexion
Username or Email
Password
Continue
