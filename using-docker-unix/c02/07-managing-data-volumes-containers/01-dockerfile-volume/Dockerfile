# crée une image (debian jessie)
FROM debian:jessie

# indique le nom du maintaineur
LABEL authors="ReadyTeam <readyteam@readydev.com>"

# crée le répertoire spécifié
# crée le fichier spécifié
# modifie le groupe spécifié
RUN useradd foo
RUN mkdir /data && touch /data/test_file
RUN chown -R foo:foo /data

# monte le volume spécifié
VOLUME /data
