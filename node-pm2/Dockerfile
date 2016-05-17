FROM cghome/node

MAINTAINER Chris.Gross <cgHome@gmx.net>

RUN npm install -g pm2@latest --unsafe-perm
RUN pm2 install pm2-docker

ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run"]