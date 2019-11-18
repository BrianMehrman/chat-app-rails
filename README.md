# Chat App

Simple chat app example using rails, webpacker, and action cable

## Start dependencies

This app needs postgres and redis to work.

```
docker-compose up
```

## Initialize the app

```
bundle install
bundle exec rails db:create db:migrate
bundle exec rails server
```
