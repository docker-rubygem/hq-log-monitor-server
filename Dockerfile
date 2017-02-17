FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.0

RUN gem install hq-log-monitor-server --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hq-log-monitor-server"]
CMD ["--help"]
