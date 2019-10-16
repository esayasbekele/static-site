FROM nginx:1.17.4-alpine-perl

COPY nginx.conf /etc/nginx/nginx.conf

ADD dist /usr/share/nginx/html/

EXPOSE 4000

CMD ["nginx", "-g", "daemon off;"]