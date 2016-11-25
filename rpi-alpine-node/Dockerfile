FROM hypriot/rpi-alpine-scratch:v3.4

MAINTAINER Chris Gross <cgHome@gmx.net>

##################################################
# Install dependencies                           #
##################################################
 
RUN apk --no-cache add \
        bash \
        bash-completion \
        su-exec \
        nano \
        git \
        nodejs 

# Fix see: https://github.com/ncopa/su-exec/issues/2 
RUN chmod u+s /sbin/su-exec

# Add app-user
ENV HOME=/home

# (Set env HOST_GID = `id -g $USER` / HOST_UID = `id -u $USER`)
ENV HOST_GID=${HOST_GID:-1000}
ENV HOST_UID=${HOST_UID:-1000}

RUN delgroup ping \
    && addgroup -g $HOST_GID app \ 
    && adduser -D -h $HOME -s /bin/false -G app -u $HOST_UID app \
    && chown -R app:app $HOME

WORKDIR $HOME

##################################################
# Start                                          #
##################################################

USER app

EXPOSE 3000
VOLUME $HOME

CMD ["node", "index.js"]