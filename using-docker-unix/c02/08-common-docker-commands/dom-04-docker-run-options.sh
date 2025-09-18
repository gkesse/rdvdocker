#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute le docker spécifié
docker run

# attache le flux spécifié
-a, --attach

# exécute le docker spécifié en arrière plan
-d, --detach

# maintient l'entrée standard ouverte
-i, --interactive

# exécute le docker spécifié avec un terminal ouvert (-it)
docker run -it debian /bin/bash
root@bd0f26f928bb:/# ls

# redémarre le docker spécifié
--restart

# supprime automatiquement le docker spécifié lors de sa fermeture
--rm

# ouvre un terminal
-t, --tty

# configure les variables d'environnement du docker spécifié
-e, --env

# configure les variables d'environnement du docker spécifié (-e)
# affiche les variables d'environnement (env)
docker run -e var1=val -e var2="val 2" debian env
...
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
HOSTNAME=b15f833d65d8
var1=val
var2=val 2
HOME=/root

# configure les variables d'environnement du docker spécifié
# à partir d'un fichier de configuration
--env-file

# démarre le docker avec le nom de l'hôte spécifié
-h, --hostname

# démarre le docker avec le nom de l'hôte (myhost)
# affiche le nom de l'hôte (hostname)
docker run -h "myhost" debian hostname
...
myhost

# démarre le docker avec le nom spécifié
--name NAME

# démarre le docker avec le volume spécifié
-v, --volume

# récupère les volumes du docker spécifié
--volumes-from

# démarre le docker en exposant le port spécifié
--expose

# démarre le docker en le liant au docker spécifié

# démarre le docker en publiant le port spécifié sur l'hôte
-p, --publish

# démarre le docker en publiant tous les ports exposés sur l'hôte
-P, --publish-all

# démarre le docker en indiquant son nouveau point d'entrée
# remplace l'instruction (ENTRYPOINT) du fichier (Dockerfile)
--entrypoint

# démarre le docker en indiquant son nouveau utilisateur
# remplace l'instruction (USER) du fichier (Dockerfile)
-u, --user

# démarre le docker en indiquant son nouveau répertoire de travail
# remplace l'instruction (WORKDIR) du fichier (Dockerfile)
-w, --workdir
