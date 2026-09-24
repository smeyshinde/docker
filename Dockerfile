FROM ubuntu:latest

LABEL dev="amey"

RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install apache2 -y

ADD https://templatemo.com/download/templatemo_633_celadon /var/www/html/templatemo_633_celadon.zip

WORKDIR /var/www/html

RUN unzip templatemo_633_celadon.zip
RUN mv templatemo_633_celadon/* /var/www/html

EXPOSE 80

CMD ["apachect1","-D","FOREGROUND"]