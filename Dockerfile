FROM python:3.6-alpine

ADD ./requirements.txt /opt/webapp/

# k8s 1.29 bug workaround
# WORKDIR /opt/webapp

RUN cd /opt/webapp/ && pip3 install -r requirements.txt

ADD . /opt/webapp

EXPOSE 8080

CMD python /opt/webapp/app.py
