FROM ubuntu:xenial
MAINTAINER herwig@herwigstuetz.com

RUN apt-get update \
  && apt-get install -y \
  texlive-latex-recommended \
  texlive-fonts-recommended \
  latexmk \
  wget \
  git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/jgm/pandoc/releases/download/1.19.1/pandoc-1.19.1-1-amd64.deb
RUN dpkg --install pandoc-1.19.1-1-amd64.deb

WORKDIR /tmp
