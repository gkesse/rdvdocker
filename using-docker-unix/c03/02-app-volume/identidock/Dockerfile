# crée une image python 3.4
FROM python:3.4
# installe flask
RUN pip install Flask==0.10.1
# définit le répertoire de travail
WORKDIR /app
# copie le dossier spécifié
COPY app /app
# exécute les commandes spécifiées
CMD ["python", "identidock.py"]
