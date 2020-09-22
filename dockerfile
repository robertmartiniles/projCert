FROM devopsedu/webapp
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
RUN rm -f /var/www/html/*.html
RUN rm -f /var/log/apache2/*.log
COPY website/ /var/www/html
EXPOSE 80
WORKDIR /usr/sbin
CMD ["apachectl", "-D", "FOREGROUND"]

#RUN apt-get install lynx
#COPY website/ /var/www/html
#RUN rm -f /var/www/html/*.html
#RUN rm -f /var/log/apache2/*.log
#RUN apachectl restart >> /var/log/apache2/error.log
#CMD tail -F /var/log/apache2/error.log
#EXPOSE 80
