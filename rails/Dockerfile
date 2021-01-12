FROM ruby:2.6.5

ENV LANG C.UTF-8
ENV APP_HOME /rails

RUN apt-get update -qq && apt-get install -y build-essential nodejs

# もしyarnでエラーが発生した場合
RUN apt-get update -qq && apt-get install -y curl && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn && apt-get install -y vim

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY ./Gemfile $APP_HOME/Gemfile
COPY ./Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install
COPY . $APP_HOME

EXPOSE  3000
