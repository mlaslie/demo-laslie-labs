FROM python:2.7-alpine
EXPOSE 8080

RUN pip install flask
RUN mkdir -p ~/templates

WORKDIR /project
ADD . /project

COPY templates /project/

CMD python main.py
