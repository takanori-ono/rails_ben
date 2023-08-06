FROM ruby:latest

RUN apt update -y && apt upgrade -y && apt install -y gcc make git ruby-full sqlite3 libsqlite3-dev nodejs yarn

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
