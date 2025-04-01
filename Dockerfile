# Utiliser une image officielle de Python comme base
FROM python:3.13.2

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par Flask
EXPOSE 8080

# Définir la commande pour démarrer l'application
CMD ["python", "src/app.py"]
