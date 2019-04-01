FROM nginx:1.15.3 as nginx
LABEL maintainer "Embras Labs <labs@embras.net>"

EXPOSE 80


# Reference: https://github.com/jfroom/docker-compose-rails-selenium-example
COPY ./mime.types /etc/nginx/mime.types
COPY ./proxy_params /etc/nginx/proxy_params
COPY ./gzip.conf /etc/nginx/conf.d/gzip.conf
