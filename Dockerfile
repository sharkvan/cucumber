FROM ruby:2.2

MAINTAINER Tim Schruben <schruben@rand.org>

ADD ca-trust/*.crt /etc/ssl/certs/
RUN update-ca-certificates

RUN gem install cucumber -v 2.4.0

RUN mkdir /code

WORKDIR /code
CMD /bin/sh
