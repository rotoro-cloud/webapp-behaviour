FROM python:3.6-alpine

ADD ./requirements.txt /opt/webapp/

WORKDIR /opt/webapp

RUN pip3 install -r requirements.txt

ADD . /opt/webapp

EXPOSE 8080

CMD python3 /opt/webapp/app.py
