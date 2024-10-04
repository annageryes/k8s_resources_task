FROM python:3.11-alpine

LABEL MAINTERNER=asakran

LABEL APP_VERSION=v.1.0.0

ENV USERS_PATH="/tmp/config/radicale/users"

ARG USER=${USER}

ARG PASSWD=${PASSWD}

RUN apk update 

RUN apk add python3 python3 apache2-utils

RUN  python -m venv /venv 

RUN /venv/bin/python3 -m pip install --upgrade radicale

COPY ./app /app

COPY config  /tmp/config

COPY config/radicale/users /root/.config/radicale/users

RUN htpasswd -b -c ${USERS_PATH} ${USER} ${PASSWD}

WORKDIR /app

VOLUME /config /data

EXPOSE 5232

CMD ["/venv/bin/radicale", "--config", "/tmp/config/config"]