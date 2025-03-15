FROM nginx:1.24.0-alpine

COPY redblue.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/red /var/www/blue

COPY red/index.html /var/www/red/index.html
COPY blue/index.html /var/www/blue/index.html

RUN chmod -R 755 /var/www/red/ /var/www/blue/

EXPOSE 8081 8082

CMD ["nginx", "-g", "daemon off;"]
