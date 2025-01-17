FROM node:20.9.0-alpine.18
WORKDIR /app
COPY ./conversao-temperatura/src/package*.json .
RUN npm install
COPY ./conversao-temperatura/src .
EXPOSE 8080
ENTRYPOINT [ "node","server.js" ]

