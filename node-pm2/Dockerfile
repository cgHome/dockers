FROM cghome/node

MAINTAINER Chris.Gross <cgHome@gmx.net>

USER root
RUN npm cache clean -f
RUN npm install -g pm2 --unsafe-perm
RUN pm2 install pm2-docker

ADD run.sh /run.sh
RUN chmod +x /run.sh

USER app
CMD ["/run"]