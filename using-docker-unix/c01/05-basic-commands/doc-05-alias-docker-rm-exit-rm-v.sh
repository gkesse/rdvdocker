#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# crée un alias (docker_rm_exit)
# supprime tous les containeurs éteints
alias docker_rm_exit='docker rm -v $(docker ps -aq -f status=exited)'
