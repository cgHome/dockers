FROM iron/node:4.2.6-dev

MAINTAINER Chris.Gross <cgHome@gmx.net>

# Add app account
RUN addgroup -g 999 app && adduser -D  -G app -s /bin/false -u 999 app

# Add packages
RUN apk --no-cache add \
        git \
        make  \
        g++ \
        python
        
ENV HOME=/home/app

USER app
WORKDIR $HOME/
# RUN npm install