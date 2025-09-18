#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# ajoute un utilisateur avant le volume (ok)
# crée le volume (/data)
# ajoute un fichier après le volume (erreur)
# change le groupe après le volume (erreur)
# ne marchera pas comme prévu
FROM debian:wheezy
RUN useradd foo
VOLUME /data
RUN touch /data/x
RUN chown -R foo:foo /data

# ajoute un utilisateur avant le volume (ok)
# crée un répertoire avant le volume (ok)
# ajoute un fichier avant le volume (ok)
# change le groupe avant le volume (ok)
# crée le volume (/data)
# marchera comme prévu
FROM debian:wheezy
RUN useradd foo
RUN mkdir /data && touch /data/x
RUN chown -R foo:foo /data
VOLUME /data