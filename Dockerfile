FROM postgres:9.6-alpine

COPY *.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
CMD ["postgres"]
