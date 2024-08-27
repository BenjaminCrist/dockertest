# Utiliser l'image officielle Python 3.11 comme base
FROM python:3.11

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances dans le répertoire de travail
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le contenu du répertoire courant dans le conteneur
COPY . .

# Commande par défaut à exécuter au lancement du conteneur
CMD ["python3"]
