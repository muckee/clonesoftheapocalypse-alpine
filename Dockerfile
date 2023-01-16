FROM alpine:3.14
RUN ln -sf /bin/bash /bin/sh
RUN useradd -ms /bin/bash 1000
RUN apk add --no-cache \
                openssh-client \
                git
                
