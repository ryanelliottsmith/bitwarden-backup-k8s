FROM alpine:latest
RUN apk add curl
RUN apt update && apt install -y curl unzip libsecret-1-0 jq
RUN curl -Lo bw-linux.zip https://vault.bitwarden.com/download/\?app\=cli\&platform\=linux && unzip bw-linux.zip && chmod +x ./bw
RUN rm bw-linux.zip
RUN mv /bw /usr/local/bin