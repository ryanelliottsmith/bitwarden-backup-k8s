FROM ubuntu
RUN apk --no-cache add curl libc6-compat
RUN curl -Lo bw-linux.zip https://vault.bitwarden.com/download/\?app\=cli\&platform\=linux && unzip bw-linux.zip && chmod +x ./bw
RUN rm bw-linux.zip
RUN mv /bw /usr/local/bin
