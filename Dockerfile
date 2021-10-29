FROM node:16.13.0-slim

ENV VERSION=1.0.0-beta.11

WORKDIR /app

RUN npm install -g log4brains@${VERSION} \
  && npm install -g sharp \
  && npm cache clean --force

EXPOSE 4004

CMD [ "log4brains" ]
