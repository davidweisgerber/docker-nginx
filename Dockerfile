FROM nginx:latest

EXPOSE 80 443

VOLUME /data

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
