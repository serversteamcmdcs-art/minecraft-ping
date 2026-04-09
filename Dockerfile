FROM php:8.2-apache

# Включаем необходимые расширения для работы с сокетами (нужны для пинга Minecraft)
RUN docker-php-ext-install sockets

# Копируем все PHP файлы в корень Apache
COPY . /var/www/html/

# Права на файлы
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
