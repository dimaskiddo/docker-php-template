FROM dimaskiddo/debian-buster:nodejs-16
MAINTAINER Team Name <team@mail.com>

# Run as Root User
USER root

# Do Some Customization if Needed Here
RUN apt-get -y update \
    && apt-get -y dist-upgrade

# Run as Non-Root User
USER user

# Make it Run Forever
CMD ["tail", "-f", "/dev/null"]
