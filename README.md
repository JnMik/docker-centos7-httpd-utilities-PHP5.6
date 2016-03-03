# CentOS7 image with httpd and some other utilities, bundled with PHP 5.6

This image is an extension of jnmik/docker-centos7-httpd-utilities

You can use it in your project with this Dockerfile exemple:

    FROM jnmik/docker-centos7-httpd-utilities-php5.6:latest
    ADD . /var/www/html
    WORKDIR /var/www/html