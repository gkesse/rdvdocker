# crée une image (debian jessie)
FROM debian:jessie

# installe les sources de (debian jessie)
RUN rm /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian jessie main" >> /etc/apt/sources.list.d/jessie.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list.d/jessie.list

# met à jour le système
# installe les packages (cowsay fortune)
RUN apt update && apt install -y cowsay fortune
