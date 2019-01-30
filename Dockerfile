FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 30010
CMD [ "npm", "start" ]
