ARG RUBY_VERSION=3.3.1
FROM --platform=linux/amd64 ruby:$RUBY_VERSION-bullseye

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  build-essential libgeos-dev libproj-dev
RUN mkdir -p /app
WORKDIR /app