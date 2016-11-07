FROM mhart/alpine-node:4

MAINTAINER Chris.Gross <cgHome@gmx.net>

ENV HOME=/home
WORKDIR $HOME/

# Add packages
RUN apk --no-cache add \
        git \
        make  \
        g++ \
        python
        
VOLUME ["${HOME}", "${HOME}/service"]

EXPOSE 3000

CMD ["node", "index.js"]