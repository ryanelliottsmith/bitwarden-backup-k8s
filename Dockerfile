FROM alpine:latest
RUN apk --no-cache add curl
RUN curl -Lo bw-linux.zip https://vault.bitwarden.com/download/\?app\=cli\&platform\=linux && unzip bw-linux.zip && chmod +x ./bw
RUN rm bw-linux.zip
RUN mv /bw /usr/local/bin