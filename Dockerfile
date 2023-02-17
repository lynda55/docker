# specifying base image
FROM centos:7
# description
LABEL description="building this image for appache containers"
LABEL maintainer="Elvie"
# Executing commad to update appache
RUN yum update -y
# Executing commad to install appache
RUN yum install httpd -y
# copying index.html from our current location into the container at a specific location
COPY index.html /var/www/html/
# container will litsen on port 80
EXPOSE 80
# start our container with httpd
# systemctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]
# this is what will be excute at lunch : /usr/sbin/httpd -D", "FOREGROUND
CMD [ "-D", "FOREGROUND" ]
