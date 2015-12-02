FROM debian:jessie
MAINTAINER Kevin Littlejohn <kevin@littlejohn.id.au>

RUN apt-get -yq update \
  && apt-get -yq install git groff less python python-dev python-pip libyaml-dev jq \
  && pip install awscli

RUN aws configure set region ap-southeast-2

WORKDIR /app
