# crée une image python 3.4
FROM python:3.4

# installe flask
# install uwsgi
RUN pip install Flask uWSGI

# définit le répertoire de travail
WORKDIR /app

# copie le dossier spécifié
COPY app /app

# exécute les commandes spécifiées
# crée un serveur http sur le port 9090
CMD ["uwsgi", "--http", "0.0.0.0:9090", \
"--wsgi-file", "/app/identidock.py", \
"--callable", "app", "--stats", "0.0.0.0:9191"]
