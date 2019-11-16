FROM python:2.7-alpine
EXPOSE 8080

RUN pip install flask
RUN mkdir -p ~/templates

COPY main.py /app/main.py
COPY templates /app/

WORKDIR /app

CMD python main.py
