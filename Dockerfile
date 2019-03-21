FROM node:8.11.2-alpine as node

WORKDIR /usr/src/app

COPY sampleui/package*.json ./

RUN npm install

COPY sampleui/. .
#cc
RUN npm run build
CMD ng serve --host 0.0.0.0
