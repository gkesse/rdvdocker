#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# exécute l'image docker (debian)
# récupère les volumes montés sur le docker (container-test)
docker run -it -h NEWCONTAINER --volumes-from container-test debian /bin/bash
