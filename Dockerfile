FROM php:5.6-apache

# Package installs
RUN apt-get update && apt-get install -y unzip php5-gmp php5-mcrypt libxml2

# PECL installs
RUN pecl install mailparse-2.1.6

# Enabling any extensions like from above
RUN docker-php-ext-enable mailparse

# Download the version of Blesta and unzip it, then remove the zip file
RUN curl -O https://account.blesta.com/client/plugin/download_manager/client_main/download/91/blesta-4.0.0.zip && unzip -qq blesta-4.0.0.zip && rm blesta-4.0.0.zip

RUN chown -R www-data: /var/www/html

EXPOSE 80

ENTRYPOINT ["apache2-foreground"]
