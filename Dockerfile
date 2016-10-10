FROM mhart/alpine-node:6
MAINTAINER Mike Cebrian
# Add build tools
RUN apk add --update bash alpine-sdk python && \
rm -rf /var/cache/apk/*
# Add Angular-CLI with my updates
RUN npm install -gpld https://github.com/JSMike/angular-cli.git#1555387385f9c2f95c89af669da4900084f4c98b && \
npm cache clean
# Create mountpoint for this directory
RUN mkdir /development
WORKDIR /development
# Add PS1 coloring
ENV PS1 "\[\033[0;32m\]\u@\h \[\033[0;33m\]\w \[\033[0m\]"
CMD ["/bin/bash", "-l"]
