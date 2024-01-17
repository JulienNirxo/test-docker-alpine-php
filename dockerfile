# Utiliser une image Alpine Linux comme base
FROM alpine:3.14

# Installer PHP et les extensions nécessaires
RUN apk --update add \
    php8 \
    php8-cli \
    php8-mbstring \
    php8-json \
    php8-session

# Copier les fichiers de votre application PHP
COPY . /test-docker-alpine-php

# Définir le répertoire de travail
WORKDIR /test-docker-alpine-php

# Exposer le port par défaut de PHP
EXPOSE 80

# Commande par défaut pour démarrer le serveur PHP
CMD ["php8", "-S", "0.0.0.0:80"]
