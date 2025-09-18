#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

#------------------------------------------------
# les UID des dockers sont les mêmes que sur l'hôte
#------------------------------------------------
# affiche le propriétaire et le groupe du fichier hôte
$ ls -l test-file
...
#-rw-r--r-- 1 owner  group 0 Dec 28 18:26 test-file
 -rw-r--r-- 1 docker staff 0 Dec 28 18:26 test-file
...

# exécute le docker spécifié
# monte le volume hôte spécifié en tant que volume docker
# récupère le terminal spécifié
$ docker run -it -v $(pwd)/test-file:/test-file debian bash

# affiche le propriétaire et le groupe du fichier docker
root@e877f924ea27:/# ls -l test-file
...
#-rw-r--r-- 1 user group 0 Dec 28 18:26 test-file
 -rw-r--r-- 1 1000 staff 0 Dec 28 18:26 test-file
...

# crée l'utilisateur spécifié
# modifie le groupe du fichier avec le nom spécifié
# affiche le propriétaire et le groupe du fichier docker
root@e877f924ea27:/# useradd -r test-user
root@e877f924ea27:/# chown test-user test-file
root@e877f924ea27:/# ls -l /test-file
...
#-rw-r--r-- 1 owner     group 0 Dec 28 18:26 /test-file
 -rw-r--r-- 1 test-user staff 0 Dec 28 18:26 /test-file
...
# ferme le docker
root@e877f924ea27:/# exit
...
exit
...

# affiche le propriétaire et le groupe sur l'hôte
docker@boot2docker:~$ ls -l test-file
...
#-rw-r--r-- 1 owner staff 0 Dec 28 18:26 test-file
 -rw-r--r-- 1 999   staff 0 Dec 28 18:26 test-file
...

# crée une image avec le nom spécifié
$ docker build -t identidock .
# exécute le docker spécifié
# affiche le nom de l'utilisateur
$ docker run identidock whoami
...
uwsgi
...

# empêche un attaquant d'accès en root à la machine hôte
definir l utilisateur dans le fichier Dockerfile