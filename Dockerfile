# Get the base image
FROM ubuntu:22.04
LABEL Description="apache2" Vendor="Kamyar@Aslanihotmail.com"
#Install all packages
RUN apt update && apt install -y apache2 openssh-server iproute2 systemctl elinks 
# adding some content for Apache server
RUN echo "This is a test docker" > /var/www/html/index.html
# Copying setting file & adding some content to be served by apache
#COPY /home/entrypoit.sh /tmp
#RUN chmod +x /tmp/entrypoint.sh
# Defining a command to be run after the docker is up
EXPOSE 80
ENV HOME /root
WORKDIR /root
#ENTRYPOINT ["/tmp/entrypoint.sh"]
#ENTRYPOINT ["ping"]
#CMD ["8.8.8.8"]