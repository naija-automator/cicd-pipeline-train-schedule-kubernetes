FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN echo "151.101.4.162 registry.npmjs.org" >> /etc/hosts && npm install --no-save --production
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
