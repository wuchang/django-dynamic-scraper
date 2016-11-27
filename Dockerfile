FROM python:3

ENV http_proxy http://10.0.75.1:1080
ENV https_proxy http://10.0.75.1:1080

ADD ./requirements.txt /tmp/
WORKDIR /tmp
RUN pip install -r requirements.txt

ADD ./  /tmp
RUN python setup.py install

WORKDIR /app

