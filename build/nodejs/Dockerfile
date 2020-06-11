FROM dimaskiddo/debian:nodejs-10
MAINTAINER Team Name <team@mail.com>

# Run as Root User
USER root

# Do Some Customization if Needed Here
RUN apt-get update \
    && mkdir -p .npm \
    && chown -R 1000:1000 .npm

# Run as Non-Root User
USER user
