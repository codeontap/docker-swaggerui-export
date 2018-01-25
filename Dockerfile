FROM swaggerapi/swagger-ui:latest

RUN apk add zip 

RUN mkdir /app/
RUN mkdir /app/indir/
RUN mkdir /app/outdir/

COPY docker-export.sh /

ADD ./docker-export.sh /usr/share/nginx/

CMD ["sh", "/usr/share/nginx/docker-export.sh"]