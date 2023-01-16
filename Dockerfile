FROM alpine:3.14
ENV HOME=/home/1000
RUN mkdir -p ${HOME}/.ssh && \
    chgrp -R 0 ${HOME} && \
    chmod -R g+rwX ${HOME}
RUN apk add --no-cache \
                openssh-client \
                git
                
