FROM cghome/node

MAINTAINER Chris.Gross <cgHome@gmx.net>

RUN npm cache clean -f
RUN npm install -g pm2 --unsafe-perm
# RUN pm2 install pm2-docker

ADD processes.json . 

# Run app
CMD pm2 start --no-daemon processes.json