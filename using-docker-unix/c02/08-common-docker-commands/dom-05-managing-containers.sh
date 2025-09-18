#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# attache l'utilisateur au docker spécifié
docker attach ....

# exécute le docker (debian) en arrière plan
# démarre une boucle dans le docker
# récupère l'identifiant du docker (ID)
ID=$(docker run -d debian sh -c "while true; do echo 'tick'; sleep 1; done;")

# attache l'utilisateur au docker spécifié (ID)
docker attach $ID
...
tick
tick
tick
tick
....

# termine le processus
# ferme le docker
CTRL-C

# crée un docker à partir de l'image spécifié
docker create

# copie des fichier du docker spécifié vers l'hôte
docker cp

# exécute une commande dans le docker spécifié
docker exec

# exécute le docker (debian) en arrière plan
# démarre une boucle (while)
# récupère l'identifiant du docker (ID)
ID=$(docker run -d debian sh -c "while true; do sleep 1; done;")
docker exec $ID echo "Hello"
...
Hello
...

# exécute une commande sur le docker spécifié
# récupère un terminal (bash)
docker exec -it $ID /bin/bash

# liste le contenu du répertoire courant
root@5c6c32041d68:/# ls
...
bin dev home lib64 mnt proc run selinux sys usr
boot etc lib media opt root sbin srv tmp var
...

# ferme le docker
root@5c6c32041d68:/# exit
...
exit
...

# tue le docker spécifié
docker kill

# envoye un signal au docker spécifié
docker kill -s

# exécute le docker (debian) en arrière plan
# exécute une commande (trap) pour intercepter les signaux
# récupère l'identifiant du docker (ID)
ID=$(docker run -d debian bash -c \
"trap 'echo caught' SIGTRAP; while true; do sleep 1; done;")

# envoye un signal (SIGTRAP) au docker spécifié (ID)
docker kill -s SIGTRAP $ID
...
e33da73c275b56e734a4bbbefc0b41f6ba84967d09ba08314edd860ebd2da86c
...

# affiche les logs du docker spécifié (ID)
docker logs $ID
...
caught
...

# tue le docker spécifié (ID)
docker kill $ID
...
e33da73c275b56e734a4bbbefc0b41f6ba84967d09ba08314edd860ebd2da86c
...

# suspend les processus du docker spécifié
docker pause

# redémarre le docker spécifié
docker restart

# supprime le docker spécifié
docker rm

# force la suppression d'un docker en cours d'exécution
docker rm -f

# supprime le docker spécifié et ses volumes
docker rm -v

# supprime tous les dockers éteints
docker rm $(docker ps -aq)
...
b7a4e94253b3
e33da73c275b
f47074b60757
...

# démarre le docker spécifié
docker start

# arrête le docker spécifié
docker stop

# arrête le docker après le temps spécifié
docker stop -t

# redémarre un docker suspendu
docker unpause

# fait passer le docker en arrière plan
CTRL + P + Q

# affiche les informations de docker
docker info

# affiche l'aide sur la commande spécifié
docker help

# affiche la version de docker
docker version

# affiche les différences du docker spécifié avec l'image originale
docker diff

# exécute le docker (debian) en arrière plan
# crée un nouveau fichier (NEW-FILE)
# recupère l'identifiant du docker (ID)
ID=$(docker run -d debian touch /NEW-FILE)

# affiche les différences du docker spécifié (ID)
docker diff $ID
...
A /NEW-FILE
...

# affiche les évènements du démon de docker
docker events

# inspecte le docker spécifié
docker inspect

# inspecte le docker avec le filtre spécifié
docker inspect -f

# liste le mappage des ports exposés sur le docker spécifié
docker port

# exécute le docker spécifié
# affiche le mappage des ports exposéq sur le docker spécifié
docker run -P <image>
...
ID=$(docker run -P -d redis)
docker port $ID
...
6379/tcp -> 0.0.0.0:32768
...
docker port $ID 6379
...
0.0.0.0:32768
...
docker port $ID 6379/tcp
...
0.0.0.0:32768
...

# liste les dockers en cours d'exécution
docker ps

# liste tous les dockers
docker ps -a

# liste tous les dockers spécifiés
docker ps -q

# liste tous les processus en cours sur le docker spécifié
docker top
...
ID=$(docker run -d redis)
docker top $ID
...
UID PID PPID C STIME TTY TIME CMD
999 9243 1836 0 15:44 ? 00:00:00 redis-server *:6379
...
ps -f -u 999
...
UID PID PPID C STIME TTY TIME CMD
999 9243 1836 0 15:44 ? 00:00:00 redis-server *:6379
...
docker top $ID -axZ
...
LABEL PID TTY STAT TIME COMMAND
docker-default 9243 ? Ssl 0:00 redis-server *:6379
...

# construit une image à partir d'un fichier (Dockerfile)
docker build

# crée une image à partir du docker spécifié
docker commit

# crée une image à partir du docker spécifié
# évite la suspension du docker spécifié
docker commit --pause=false

# crée une image à partir du docker spécifié
# configure la création avec le nom du maintaineur spécifié
docker commit -a

# crée une image à partir du docker spécifié
# configure la création avec la description spécifiée
docker commit -m
...
ID=$(docker run -d redis touch /new-file)
docker commit -a "Joe Bloggs" -m "Comment" $ID commit:test
...
ac479108b0fa9a02a7fb290a22dacd5e20c867ec512d6813ed42e3517711a0cf
...
docker images commit
...
REPOSITORY TAG IMAGE ID CREATED VIRTUAL SIZE
commit test ac479108b0fa About a minute ago 111 MB
...
docker run commit:test ls /new-file
...
/new-file
...

# exporte le docker spécifié sous forme d'archive
# sur la sortie standard
docker export

# affiche les informations sur les couches du docker spécifié
docker history

# affiche des informations sur les images locales
docker images
...
docker images | head -4
...
REPOSITORY TAG IMAGE ID CREATED VIRTUAL SIZE
identidock_identidock latest 9fc66b46a2e6 26 hours ago 839.8 MB
redis latest 868be653dea3 6 days ago 110.8 MB
containersol/pres-base latest 13919d434c95 2 weeks ago 401.8 MB
...
docker rmi $(docker images -q -f dangling=true)
...
Deleted: a9979d5ace9af55a562b8436ba66a1538357bc2e0e43765b406f2cf0388fe062
...


# crée une image à partir d'un fichier archive
docker import
...
docker export 35d171091d78 | docker import - flatten:test
...
5a9bc529af25e2cf6411c6d87442e0805c066b96e561fbd1935122f988086009
...
docker history flatten:test
...
IMAGE CREATED CREATED BY SIZE COMMENT
981804b0c2b2 59 seconds ago 317.7 MB Imported from -
...

# charge un docker à partir d'une archive sur l'entrée standard
docker load

# supprime l'image spécifiée
docker rmi

# supprime l'image spécifiée à partir de plusieurs référentiels
docker rmi -f

# enregistre l'image ou le répertoire dans l'archive spécifiée
docker save
...
docker save -o /tmp/redis.tar redis:latest
docker rmi redis:latest
...
Untagged: redis:latest
Deleted: 868be653dea3ff6082b043c0f34b95bb180cc82ab14a18d9d6b8e27b7929762c
...
docker load -i /tmp/redis.tar
docker images redis
...
REPOSITORY TAG IMAGE ID CREATED
VIRTUAL SIZE
redis latest 0f3059144681 3 months ago
111 MB
...

# associe un tag docker spécifié
docker tag
...
docker tag faa2b75ce09a newname
docker tag newname:latest amouat/newname
docker tag newname:latest amouat/newname:newtag
docker tag newname:latest myregistry.com:5000/newname:newtag
...

# connecte l'utilisateur au docker hub
docker login

# déconnecte l'utilisateur au docker hub
docker logout

# récupère l'image depuis le dépôt spécifié
docker pull

# récupère toutes les images depuis le dépôt spécifié
docker pull -a

# pousse une image vers le dépôt spécifié
docker push

# liste les images correspondant à la recherche spécifiée
docker search
