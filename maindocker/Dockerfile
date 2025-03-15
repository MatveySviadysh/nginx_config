FROM nginx:1.24.0-alpine

RUN apk add --no-cache bash

RUN apk add --no-cache nginx-mod-http-image-filter

RUN apk add --no-cache procps grep sed gawk 

COPY nginx.conf /etc/nginx/nginx.conf
COPY main.conf /etc/nginx/conf.d/default.conf

COPY ./view/cpu/cpu_usage.sh /usr/local/bin/cpu_usage.sh

RUN chmod +x /usr/local/bin/cpu_usage.sh

COPY ./view/cpu/cpu_usage.txt /var/www/cpu/cpu_usage.txt

COPY ./view/images/ /var/www/images/

COPY ./view/home.html /usr/share/nginx/html/
COPY ./view/secondpage.html /usr/share/nginx/html/
COPY ./view/song.mp3 /usr/share/nginx/html/music/

COPY ./view/certs/fullchain.pem /etc/letsencrypt/live/command3.zapto.org/fullchain.pem
COPY ./view/certs/privkey.pem /etc/letsencrypt/live/command3.zapto.org/privkey.pem
COPY ./view/certs/privkey.pem /etc/letsencrypt/live/command3.zapto.org/privkey.pem

COPY ./view/certs/options-ssl-nginx.conf /etc/letsencrypt/options-ssl-nginx.conf
COPY ./view/certs/ssl-dhparams.pem /etc/letsencrypt/ssl-dhparams.pem

RUN chmod 644 /etc/letsencrypt/live/command3.zapto.org/fullchain.pem && \
    chmod 644 /etc/letsencrypt/live/command3.zapto.org/privkey.pem && \
    chmod 644 /etc/letsencrypt/options-ssl-nginx.conf && \
    chmod 644 /etc/letsencrypt/ssl-dhparams.pem


EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
