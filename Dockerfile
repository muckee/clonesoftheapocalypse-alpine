FROM alpine:3.14
ENV HOME=/home/1000
RUN mkdir ${HOME}; \
    chown -R 0:1000 ${HOME}; \
    chmod -R g+rwX ${HOME};
WORKDIR /home/1000
RUN apk add --no-cache \
                openssh-client \
                git
                
