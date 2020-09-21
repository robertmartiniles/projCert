FROM devopsedu/webapp
COPY website/ /var/www/html
RUN /bin/systemctl restart apache2.service
EXPOSE 80
