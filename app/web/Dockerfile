FROM dimaskiddo/debian-buster:php-8.2-nginx-novol
MAINTAINER Team Name <team@mail.com>

# Run as Root User
USER root

# Do Some Customization if Needed Here
RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install \
        curl

# Run as Non-Root User
USER user
