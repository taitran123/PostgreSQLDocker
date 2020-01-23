FROM postgres:9.6

RUN apt-get update
RUN apt-get install --reinstall build-essential -y

# SYSTEM monitor tool
COPY check_postgres /usr/local/bin/check_postgres
WORKDIR /usr/local/bin/check_postgres/
RUN perl Makefile.PL 
RUN make
RUN make install
RUN apt-get install nagios-nrpe-server -y
EXPOSE 5666

# Postgre Options
COPY *.sh /docker-entrypoint-initdb.d/
WORKDIR /workspace/pgdata/
EXPOSE 5432
CMD ["postgres"]
