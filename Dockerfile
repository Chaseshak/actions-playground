FROM ruby:3.2.0-alpine3.17

WORKDIR /tmp

RUN apk add --no-cache \
  git \
  python3 \
  py3-pip \
  && \
  pip3 install trufflehog


COPY test*.gem .
RUN gem install test*.gem \
  && \
  rm test*.gem

WORKDIR /root

ENTRYPOINT ["test"]
CMD []
