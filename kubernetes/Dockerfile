FROM ruby:2.5.7-stretch

RUN apt update && \
    apt install -y apt-transport-https \
                       gnupg && \
    echo 'deb https://deb.nodesource.com/node_12.x stretch main' >> /etc/apt/sources.list && \
    curl -sS https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    apt update && \
    apt install -y clamdscan \
                   nodejs \
                   postgresql-client \
                   openssl \
                   imagemagick && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile* /
COPY .gemrc /
RUN gem install bundler -v 2.1.4
RUN bundle install

COPY . /
