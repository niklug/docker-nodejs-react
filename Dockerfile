FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
RUN npm install pm2 -g

# Bundle app source
COPY . /usr/src/app

ENV NODE_ENV development

EXPOSE 8080
CMD [ "pm2-docker", "server.js" ]