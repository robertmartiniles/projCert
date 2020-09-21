FROM devopsedu/webapp
COPY /var/lib/jenkins/workspace/job3/website/ /var/www/html
RUN systemctl restart apache2.service
EXPOSE 80
