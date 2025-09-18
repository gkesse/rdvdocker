#!/bin/bash

# exécute le script à partir de n'importe quel répertoire
root=$(dirname "$0")
cd $root

# télécharge une image parente à jour
# évite de réutiliser une image locale non à jour
docker pull
