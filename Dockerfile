FROM postgres:9.6

# Postgre Options
COPY *.sh /docker-entrypoint-initdb.d/
WORKDIR /workspace/Genki/Database
EXPOSE 5432
CMD ["postgres"]
