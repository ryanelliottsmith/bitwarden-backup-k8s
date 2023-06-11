FROM node:18-alpine

RUN npm install -g @bitwarden/cli

ENTRYPOINT [ "/usr/local/bin/bw" ]
