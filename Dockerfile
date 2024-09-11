# Utilisez une image Node officielle
FROM node:18

# Créez un répertoire de travail pour l'application
WORKDIR /usr/src/app

# Copiez le reste des fichiers de l'application
COPY . .

# Installez Ionic et les dépendances de l'application
RUN npm install -g @ionic/cli
RUN npm install

# Exposez le port par défaut utilisé par Ionic
EXPOSE 8100

# Démarrez le serveur de développement Ionic
CMD ["ionic", "serve", "--host", "0.0.0.0", "--port", "8100", "--disableHostCheck"]
