FROM nginx:latest

EXPOSE 80 443

RUN apt-get update
RUN apt-get install -y libauthen-simple-ldap-perl fcgiwrap

VOLUME /data

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
