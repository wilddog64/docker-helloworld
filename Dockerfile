FROM busybox
MAINTAINER wilddog64

ADD index.html /www/index.html

EXPOSE 8000

# Create a basic webserver and sleep forever
CMD httpd -v -p 8000 -h /www; tail -f /dev/null

