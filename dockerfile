FROM devopsedu/webapp
COPY website/ /var/www/html
RUN apachectl restart 
EXPOSE 80
