FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER Chris Gross <cgHome@gmx.net>

# Install dependencies 
RUN apk --no-cache add \
        bash \
        bash-completion \
        nano \
        git \
        nodejs 

# Add app-user
ENV HOME=/home/app

RUN delgroup ping \
    && addgroup -g 1000 app \ 
    && adduser -D -h $HOME -s /bin/false -G app -u 1000 app \
    && chown -R app:app $HOME

# Start
USER app
WORKDIR $HOME/

EXPOSE 3000
VOLUME [$HOME]

CMD ["node", "index.js"]