FROM centos:latest
	MAINTAINER faaiz0076@gmail.com
	RUN yum install -y httpd && \
	    yum install -y unzip
	ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
	WORKDIR /var/www/html
	RUN unzip photogenic.zip && \
	    cp -rvf photogenic/*  .   && \
	    rm -rf photogenic photogenic.zip
	CMD [*/usr/sbin/httpd", "-D" , "FOREGROUND"]
	EXPOSE 80
