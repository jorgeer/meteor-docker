FROM debian:stretch-slim
LABEL maintainer="jorgeer"

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
    ca-certificates curl openssh-client \
    build-essential g++ apt-transport-https \
  && rm -rf /var/lib/apt/lists/* && \
    apt-get autoremove -y && \
    apt-get clean


RUN curl https://install.meteor.com/ | sh

RUN useradd --create-home --shell /bin/bash --uid 1000 --user-group app
USER app

RUN meteor update

ENV PORT 3000

EXPOSE 3000
EXPOSE 3001