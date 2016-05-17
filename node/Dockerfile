FROM iron/node:4.2.6-dev

MAINTAINER Chris.Gross <cgHome@gmx.net>

# Add packages
RUN apk --no-cache add \
        git \
        make  \
        g++ \
        python
        
# Setting environment variables
ENV APP /home/app
ENV LOG /home/log

# Create directorys
RUN mkdir $APP $LOG 
RUN cd $APP
WORKDIR $APP