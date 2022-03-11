FROM ruby:2.6

RUN apt-get update && \
  apt-get install -y nodejs npm

RUN apt-get install -y libjson-xs-perl libyaml-perl

RUN apt-get install -y vim less

RUN mkdir /work
WORKDIR /work

# -- slate setup
RUN git clone https://github.com/slatedocs/slate.git
WORKDIR /work/slate
RUN gem install bundler
RUN bundler -v
RUN bundle install


# -- openapi2slate setup
WORKDIR /work
RUN npm -g i widdershins


# -- custom stuff
COPY ./yaml2json /work/yaml2json
COPY ./build     /work/build

CMD "/work/build"
