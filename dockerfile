FROM devopsedu/webapp
COPY website/ /var/www/html
RUN rm -f /var/www/html/*.html
RUN apachectl restart 
# CMD tail -f /var/log/apache2/error.log
EXPOSE 80
