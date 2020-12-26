FROM ruby:2.7.1-slim-buster

RUN  apt-get update -qq && apt-get install -y \
       postgresql-client \
       nodejs build-essential \ 
       patch ruby-dev \ 
       zlib1g-dev \ 
       liblzma-dev \ 
       libpq-dev

WORKDIR /story_pad

COPY Gemfile /story_pad/Gemfile
COPY Gemfile.lock /story_pad/Gemfile.lock
RUN bundle install

COPY . /story_pad

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]