#!/bin/bash

# ne reçoit aucun argument en entrée
if [ $# -eq 0 ]; then
    # génère un message avec (fortune)
    # affiche une image ascii avec (cowsay)
    /usr/games/fortune | /usr/games/cowsay
# reçoit un ou plusieurs arguments entrée
else
    # affiche une image ascii avec (cowsay)
    /usr/games/cowsay "$@"
fi
