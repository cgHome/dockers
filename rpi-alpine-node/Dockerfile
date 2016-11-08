FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER Chris Gross <cgHome@gmx.net>

# Install dependencies 
RUN set -x \ 
    && apk add --no-cache \
        bash \
        bash-completion \
        nano \
        git \
        nodejs 

# Add app-user
RUN delgroup ping \  
    && addgroup -g 999 app \ 
    && adduser -D -G app -s /bin/false -u 999 app

# Change the working directory.
WORKDIR /home/app

# Start
USER app

VOLUME /home/app
EXPOSE 3000

CMD [""]