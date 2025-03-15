FROM nginx:1.24.0-alpine

RUN apk add --no-cache bash procps

COPY main.conf /etc/nginx/conf.d/default.conf

COPY ./view/cpu/cpu_usage.sh /usr/local/bin/cpu_usage.sh

RUN chmod +x /usr/local/bin/cpu_usage.sh

COPY ./view/cpu/cpu_usage.txt /var/www/cpu/cpu_usage.txt

COPY ./view/images/ /var/www/images/

COPY ./view/home.html /usr/share/nginx/html/
COPY ./view/secondpage.html /usr/share/nginx/html/
COPY ./view/song.mp3 /usr/share/nginx/html/music/

COPY certs/ /etc/letsencrypt/live/command3.zapto.org/


EXPOSE 80 443

CMD ["/bin/sh", "-c", "/usr/local/bin/cpu_usage.sh && nginx -g 'daemon off;'"]