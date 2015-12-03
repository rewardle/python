FROM debian:jessie
MAINTAINER Kevin Littlejohn <kevin@littlejohn.id.au>

RUN apt-get -yq update \
  && apt-get -yq install git groff less python python-dev python-pip libyaml-dev jq libmysqlclient-dev \
  && pip install awscli MySQL-python boto3 \
  && pip install --allow-external mysql-connector-python mysql-connector-python

RUN aws configure set region ap-southeast-2

WORKDIR /app
