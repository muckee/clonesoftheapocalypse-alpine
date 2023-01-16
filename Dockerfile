FROM alpine:3.14
ENV HOME=/home/1000
RUN apk add --no-cache \
                openssh-client \
                git
                
