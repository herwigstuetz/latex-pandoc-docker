FROM ubuntu:xenial
MAINTAINER herwig@herwigstuetz.com

RUN apt-get update \
  && apt-get install -y software-properties-common

RUN add-apt-repository ppa:jonathonf/texlive

RUN apt-get update \
  && apt-get install -y \
  texlive-latex-recommended \
  texlive-fonts-recommended \
  texlive-latex-extra \
  texlive-bibtex-extra \
  texlive-science \
  latexmk \
  wget \
  git \
  build-essential \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/jgm/pandoc/releases/download/2.0.1/pandoc-2.0.1-1-amd64.deb
RUN dpkg --install pandoc-2.0.1-1-amd64.deb

WORKDIR /tmp
