FROM node:18-alpine

RUN apk add expect && npm install -g @bitwarden/cli

COPY ./scripts /scripts
ENTRYPOINT [ "/usr/local/bin/bw" ]
