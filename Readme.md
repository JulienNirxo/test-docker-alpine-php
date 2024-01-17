Pour le container mysql : docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=mydatabase -p 3306:3306 -d mysql:latest

Pour le container php : docker run --name php-container --link mysql-container:mysql -p 80:80 -d votre-image-php:tag
