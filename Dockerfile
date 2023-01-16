FROM alpine:3.14
RUN apk update && apk add --no-cache \
                  openssh-client \
                  git \
                  nodejs \
                  npm
RUN npm install -g @babel/core @babel/plugin-syntax-flow @babel/plugin-transform-react-jsx @emotion/react @emotion/styled @mui/material @testing-library/dom @testing-library/jest-dom @testing-library/react @testing-library/user-event eslint eslint-config-react-app framer-motion json2mq postcss react react-dom react-particles react-router-dom react-scripts react-tabs remixicon tsparticles typescript web-vitals && \
    npm install -g --save-dev @bazel/buildifier @bazel/ibazel autoprefixer cross-env
RUN addgroup -S 1000 && \
    adduser -S 1000 -G 1000 && \
    mkdir /home/1000/.ssh && \
    chown -R 1000:1000 /home/1000
ENV HOME /home/1000
USER 1000
