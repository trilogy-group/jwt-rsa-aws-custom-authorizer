FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER root

RUN npm install

RUN apk add zip

COPY --chown=node:node . .

CMD [ "sh", "run.sh" ]