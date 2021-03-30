FROM node:14.16.0-alpine3.13

ARG WWWGROUP

WORKDIR /app

# RUN addgroup -g $WWWGROUP vite
RUN adduser -s /bin/sh -g $WWWGROUP -u 1337 -D vite

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run", "dev"]