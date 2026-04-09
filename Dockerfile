FROM php:8.2-apache

# Устанавливаем расширение sockets
RUN docker-php-ext-install sockets

# Копируем файлы проекта
COPY . /var/www/html/

# Права на файлы
RUN chown -R www-data:www-data /var/www/html

# Скрипт запуска — меняет порт Apache на $PORT из окружения Render
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
