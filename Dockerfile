FROM python:3.6-alpine
RUN apk add --no-cache openssl-dev libffi-dev build-base
RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing rocksdb-dev
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
