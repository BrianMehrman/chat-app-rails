# Chat App

Simple chat app example using rails, webpacker, and action cable

## Start dependencies

This app needs postgres and redis to work.


## Install dependencies
```
brew install skaffold
brew install kubernetes-cli
brew install kustomize
brew install k9s
```

## Build Docker image

```
docker build -t chat-rails-app:0.0.1 . -f ./kubernetes/Dockerfile
```

If you build your image remember to update the `kubernetes/chat-app/deployment.yaml` with the image name.

## Starting K8s

```
skaffold dev --port-forward
```
## Initialize the app

```
bundle install
bundle exec rails db:create db:migrate
bundle exec rails server
```

## Usage

Open `http://localhost:9202`, maybe? I am not too sure. Didn't get this one working yet
