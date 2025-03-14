FROM nginx:latest

COPY ./nginx/default.conf /etc/nginx/conf.d/
COPY ./view/home.html /usr/share/nginx/html/
COPY ./view/secondpage.html /usr/share/nginx/html/
COPY ./music /usr/share/nginx/html/music/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
