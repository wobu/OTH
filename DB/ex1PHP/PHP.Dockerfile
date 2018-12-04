FROM php:7-fpm

RUN apt update

RUN apt install --no-install-recommends --no-install-suggests -y apt-transport-https ca-certificates curl gnupg

RUN curl -o microsoft.key https://packages.microsoft.com/keys/microsoft.asc
RUN apt-key add microsoft.key
RUN rm microsoft.key
RUN curl https://packages.microsoft.com/config/debian/9/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt update

RUN ACCEPT_EULA=Y apt install --no-install-recommends --no-install-suggests -y msodbcsql17 mssql-tools unixodbc-dev

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN pecl install sqlsrv && docker-php-ext-enable sqlsrv
RUN pecl install pdo_sqlsrv && docker-php-ext-enable pdo_sqlsrv

# forward logs to docker log collector
RUN ln -sf /dev/stdout /var/log/fpm-php.www.log 
