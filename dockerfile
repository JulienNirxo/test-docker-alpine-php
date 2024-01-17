# Utiliser une image Alpine Linux comme base
FROM alpine:3.14

# Installer PHP et les extensions nécessaires
RUN apk --update add \
    php8 \
    php8-cli \
    php8-mbstring \
    php8-json \
    php8-session \
    php8-pdo \
    php8-pdo_mysql

# Installer MySQL
RUN apk --update add \
    mysql \
    mysql-client

# Copier les fichiers de votre application PHP
COPY . /alpinephp

# Définir le répertoire de travail
WORKDIR /alpinephp

# Exposer le port par défaut de PHP
EXPOSE 80

# Commande par défaut pour démarrer le serveur PHP
CMD ["php8", "-S", "0.0.0.0:80"]
