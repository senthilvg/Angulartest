FROM node:8.11.2-alpine as node

WORKDIR /usr/src/app

COPY sampleui/package*.json ./

RUN npm install

COPY sampleui/. .

RUN npm run build
