FROM alpine:3.14
RUN apk update && apk add --no-cache \
                  openssh-client \
                  git
RUN addgroup -S 1000 && \
    adduser -S 1000 -G 1000 && \
    chown 1000:1000 /home/1000 && \
    chmod 770 /home/1000
USER 1000
