FROM oraclelinux:8.4    
#we are asking docker server to pull this image from Docker hub
LABEL name="kovardhanan"
LABEL email="kovardhanan.s@gaeaglobal.com"
#Time to copy my code to image
RUN yum install httpd -y
COPY project-html-website  /var/www/html/
#nginx is having default location as /usr/share/nginx/html/
CMD ["httpd", "-DFOREGROUND"]
#Default process of contanier 
