# crée une image python 3.4
FROM python:3.4

# crée le groupe spécifié
# crée l'utilisateur spécifié
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

# installe flask
# install uwsgi
RUN pip install Flask uWSGI

# définit le répertoire de travail
WORKDIR /app

# copie le dossier spécifié
COPY app /app
# copie le script spécifié
COPY cmd.sh /

# expose les ports spécifiés
EXPOSE 9090 9191
# définit l'utilisateur spécifié
USER uwsgi

# exécute les commandes spécifiées
CMD ["/cmd.sh"]
