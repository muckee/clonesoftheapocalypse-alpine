FROM alpine:3.14
ENV HOME=/home/1000
RUN mkdir ${HOME} && \
    for f in "${HOME}"; do \
    chgrp -R 0 ${f} && \
    chmod -R g+rwX ${f}; \
    done
WORKDIR /home/1000
RUN apk add --no-cache \
                openssh-client \
                git
                
