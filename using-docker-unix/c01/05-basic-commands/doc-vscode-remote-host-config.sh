#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

#------------------------------------------------
# configure une machine distante pour vscode remote ssh
#------------------------------------------------
# ouvre le fichier de configuration de vscode
C:\Users\username\.ssh\config

# configure la machine distante
Host [hostname]
  HostName [hostname]
  User [username]
  Port 22
  ForwardX11 yes
  ForwardX11Trusted yes
  ForwardAgent yes
  AddKeysToAgent yes
