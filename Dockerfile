FROM httpd:2.4
MAINTAINER wilddog64

ADD files/httpd.conf /usr/local/apache2/conf/httpd.conf
ADD files/index.html /usr/local/apache2/htdocs

