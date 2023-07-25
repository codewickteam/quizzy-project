FROM php:7.2-apache
WORKDIR /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql
COPY ./quizzy-p/codecanyon-27941288-quizzy-online-examination-platform:/var/www/html /var/www/html
EXPOSE 8888
# starting the php development server
CMD ["php", "-S", "0.0.0.0:8888"]
