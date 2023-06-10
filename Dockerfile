FROM alpine:latest as build
RUN apk --no-cache add curl
RUN curl -Lo bw-linux.zip https://vault.bitwarden.com/download/\?app\=cli\&platform\=linux && unzip bw-linux.zip && chmod +x ./bw
RUN rm bw-linux.zip

FROM gcr.io/distroless/static-debian11
COPY --from=build /bw /usr/local/bin
