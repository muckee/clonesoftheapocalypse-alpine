FROM alpine:3.14
RUN ln -sf /bin/bash /bin/sh
RUN apk update && apk add --no-cache \
                openssh-client \
                git
RUN groupadd -r 1000 \
  && useradd -r -g 1000 1000
USER 1000
WORKDIR /usr/local/bin/1000
