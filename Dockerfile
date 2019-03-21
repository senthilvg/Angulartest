FROM node:8.11.2-alpine as node

WORKDIR /usr/src/app

COPY sampleui/package*.json ./

RUN npm install

COPY sampleui/. .
#cc
RUN npm run build
# expose port 80
EXPOSE 80

# run nginx
CMD ["nginx", "-g", "daemon off;"]
