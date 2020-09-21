FROM devopsedu/webapp
COPY website/ /var/www/html
RUN rm -f /var/www/html/*.html
RUN rm -f /var/log/apache2/*.log
RUN apachectl restart 
CMD tail -F /var/log/apache2/error.log
EXPOSE 80
