#!/bin/bash
# Render задаёт порт через $PORT, Apache по умолчанию слушает 80
PORT=${PORT:-80}

# Меняем порт в конфиге Apache
sed -i "s/Listen 80/Listen $PORT/" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:$PORT>/" /etc/apache2/sites-enabled/000-default.conf

# Убираем предупреждение о ServerName
echo "ServerName localhost" >> /etc/apache2/apache2.conf

exec apache2-foreground
