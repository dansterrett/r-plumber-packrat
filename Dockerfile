# The file was inspired by https://hub.docker.com/r/trestletech/plumber/dockerfile.
# To build image, run `docker build -t dansterrett/r-plumber-packrat:3.6.1 .`
FROM r-base:3.6.1
MAINTAINER Dan Sterrett <dsterrett@canallc.com>

RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev \
  && install2.r plumber \
  && install2.r packrat
