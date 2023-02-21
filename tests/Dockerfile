FROM ruby:alpine3.17
ENV DD_TRACE_AGENT_URL=http://localhost:8126
ENV DD_ENV=ci

RUN apk update && \
    apk add build-base && \
    apk add g++ gcc unixodbc-dev unixodbc freetds-dev freetds

RUN mkdir cucumber
WORKDIR /cucumber
COPY Gemfile /cucumber/
ADD /features /cucumber/features

RUN gem install bundler --source http://rubygems.org &&\
    bundle install
CMD ["cucumber"]