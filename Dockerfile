FROM ruby:2.7.5-slim-buster

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  build-essential libgeos-dev libproj-dev
RUN mkdir -p /app
WORKDIR /app