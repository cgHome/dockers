FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER Chris Gross <cgHome@gmx.net>

##################################################
# Install packages                               #
##################################################

RUN apk add --no-cache --virtual .build-deps \
        bash \
        bash-completion \ 
        nano \
        git \
        nodejs \
    && apk del .build-deps

##################################################
# Start                                          #
##################################################

