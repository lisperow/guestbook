FROM mhart/alpine-node:latest

MAINTAINER Your Name <you@example.com>

# Create app directory
RUN mkdir -p /guestbook
WORKDIR /guestbook

# Install app dependencies
COPY package.json /guestbook
RUN npm install pm2 -g
RUN npm install

# Bundle app source
COPY target/release/guestbook.js /guestbook/guestbook.js
COPY public /guestbook/public

ENV HOST 0.0.0.0

EXPOSE 3000
CMD [ "pm2-docker", "/guestbook/guestbook.js" ]
