FROM ruby:alpine3.17

RUN apk update && \
    apk add build-base && \
    apk add g++ gcc unixodbc-dev unixodbc freetds-dev freetds

RUN mkdir cucumber
WORKDIR /cucumber
COPY Gemfile /cucumber/
ADD /features /cucumber/features

RUN gem install bundler --source http://rubygems.org &&\
    bundle install

CMD 'cucumber'


