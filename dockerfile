FROM devopsedu/webapp
COPY website/ /var/www/html
RUN apachectl restart 
CMD tail -f /var/log/apache2
EXPOSE 80
