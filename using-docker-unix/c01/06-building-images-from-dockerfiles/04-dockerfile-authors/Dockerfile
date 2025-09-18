# crée une image (debian jessie)
FROM debian:jessie

# indique le nom du maintaineur
LABEL authors="ReadyTeam <readyteam@readydev.com>"

# installe les sources de (debian jessie)
RUN rm /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian jessie main" >> /etc/apt/sources.list.d/jessie.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list.d/jessie.list

# met à jour le système
# installe les packages (cowsay fortune)
RUN apt update && apt install -y cowsay fortune

# copie le script (entrypoint.sh) à la racine
COPY entrypoint.sh /

# démarre l'exécution par le script (entrypoint.sh)
ENTRYPOINT ["/entrypoint.sh"]
