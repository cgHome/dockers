FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER Chris Gross <cgHome@gmx.net>

##################################################
# Install packages                               #
##################################################

RUN apk update \
    && apk upgrade \
        && apk add --no-cache \
        bash \
        bash-completion \ 
        nano \
        git \
        nodejs

##################################################
# Start                                          #
##################################################

