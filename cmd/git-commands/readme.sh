# clone le dépôt spécifié
git clone https://github.com/gkesse/rdvdocker.git

# affiche l'état du dépôt
# affiche tous les fichiers
git status -u

# indexe un répertoire
git add /path/to/folder/

# indexe les fichiers avec l'extension spécifiée
git add /path/to/folder/*.ext

# commit les modifications indexés
git commit -m "initial commit"

# affiche les branches locales et distantes
git branch -a

# pousse les modifications
git push origin main

# récupère les modifications
# fusionne les branches
git pull
