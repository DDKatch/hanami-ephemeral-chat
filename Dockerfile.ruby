FROM ruby:3.0-alpine

RUN apk update && apk add build-base git sqlite-dev postgresql-dev

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
COPY .bundle .bundle

RUN gem install bundler -v 2.2.29

COPY . .

RUN bundle install

# COPY script script
# COPY config config
