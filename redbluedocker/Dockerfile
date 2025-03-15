FROM nginx:1.24.0-alpine

COPY redblue.conf /etc/nginx/conf.d/redblue.conf

COPY red/index.html /var/www/red/index.html
COPY blue/index.html /var/www/blue/index.html

EXPOSE 8081 8082

CMD ["nginx", "-g", "daemon off;"]