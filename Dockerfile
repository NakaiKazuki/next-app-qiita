FROM node:18.16-alpine3.17

ENV APP_ROOT /node/next-app

RUN apk update && \
    npm install -g pnpm && \
    mkdir -p $APP_ROOT && \
    chown 1000:1000 $APP_ROOT

WORKDIR $APP_ROOT

COPY . .

EXPOSE 3000