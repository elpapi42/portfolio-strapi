FROM node:12-slim

WORKDIR /strapi

COPY package.json ./
COPY yarn.lock ./
RUN npm install

COPY . .

ENTRYPOINT [ "npm", "run", "develop" ]