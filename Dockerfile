FROM wordpress:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y unzip


RUN wget https://downloads.wordpress.org/theme/popularfx.1.2.0.zip
RUN wget https://downloads.wordpress.org/plugin/elementor.3.2.2.zip

RUN unzip /var/www/html/popularfx.1.2.0.zip
RUN unzip /var/www/html/elementor.3.2.2.zip

RUN rm /var/www/html/popularfx.1.2.0.zip 
RUN rm /var/www/html/elementor.3.2.2.zip

RUN mv elementor /var/www/html/wp-content/plugins
RUN mv popularfx /var/www/html/wp-content/themes