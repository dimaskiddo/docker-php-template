FROM dimaskiddo/alpine:nodejs-10
MAINTAINER Team Name <team@mail.com>

# Run as Root User
USER root

# Do Some Customization if Needed Here
RUN apk add --no-cache --update \
      python \
      python-dev \
    && npm i -g \
        npm \
        node-gyp \
    && chown -R 1000:1000 .npm

# Run as Non-Root User
USER user
