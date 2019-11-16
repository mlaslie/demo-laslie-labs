FROM python:2.7-alpine
EXPOSE 8080

WORKDIR /app

RUN pip install flask
RUN apk update && apk add bash

COPY main.py /app
COPY templates /app/templates


CMD python main.py
