FROM jnmik/docker-centos7-httpd-utilities:latest
MAINTAINER Jean-Michael Cyr <cyrjeanmichael@gmail.com

# Update repo for php 5.6
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# Install Utilities and Base Apps 
RUN yum -y update && yum -y install php56w php56w-mysql php56w-xml php56w-mbstring php56w-opcache && yum -y clean all

# Documentation and References
# http://yomotherboard.com/how-to-install-upgrade-to-php-5-6-on-centos-rhel/
# http://devdocs.magento.com/guides/v2.0/install-gde/prereq/php-centos.html
# https://github.com/dockerfile/nodejs/blob/master/
# http://serverfault.com/questions/31393/installing-make-with-wget
# https://nodejs.org/download/release/
# http://dev.antoinesolutions.com/apache-server
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server