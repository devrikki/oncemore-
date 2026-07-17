FROM nginx:latest
COPY ./usr/local/apache2/htdocks
EXPOSE 80