# docker build -t rakesh/bidvest-modules
FROM ubuntu:18.04

MAINTAINER Rakesh D <rakesh.cloud12@gmail.com>

ENV PYTHONUNBUFFERED 1

RUN apt update

RUN apt-get install -y python3.6 python3-pip python3-dev build-essential

RUN pip3 install --upgrade pip
RUN ln -sfn /usr/bin/python3.6 /usr/bin/python3 && ln -sfn /usr/bin/python3 /usr/bin/python && ln -sfn /usr/bin/pip3 /usr/bin/pip
RUN mkdir -p /app/bidvest-modules

WORKDIR /app/bidvest-modules/
COPY . .
RUN pip install --no-cache-dir  -r requirements.txt
#EXPOSE 8989
#CMD ["export","MODULE_NUMBER=1"]
#CMD ["python","main.py","1"] 