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

# Add docker-user
RUN delgroup ping \  
    && addgroup -g 999 docker \ 
    && adduser -D -h /home -s /bin/false -G docker -u 999 docker

# Change the working directory.
WORKDIR /home
RUN chown -R docker /home

# Start
USER docker

VOLUME /home
EXPOSE 3000

CMD ["node", "index.js"]