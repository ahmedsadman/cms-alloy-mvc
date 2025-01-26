FROM mcr.microsoft.com/mssql/server:2019-CU30-ubuntu-20.04 AS base

ENV ACCEPT_EULA=Y

USER root

WORKDIR /src
COPY ./Docker/create-db.sh .
RUN chmod +x /src/create-db.sh

USER mssql

EXPOSE 1433

ENTRYPOINT /src/create-db.sh & /opt/mssql/bin/sqlservr
