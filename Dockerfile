FROM python:2.7-alpine
EXPOSE 8080

RUN pip install flask
RUN mkdir -p ~/templates

COPY main.py main.py
COPY templates/index.html ~templates/index.html

CMD python main.py
