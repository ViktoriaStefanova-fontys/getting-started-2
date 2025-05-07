# syntax=docker/dockerfile:1

FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . /app
RUN yarn install --production
RUN mkdir -p /etc/todos
CMD ["node", "src/index.js"]
EXPOSE 3000