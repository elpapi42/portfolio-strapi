FROM node:12-slim

WORKDIR /strapi

COPY package*.json ./
RUN npm install

COPY . .

ENTRYPOINT [ "npm", "run", "develop" ]