FROM alpine:3.8
RUN apk --no-cache add openssl \
&& wget -q -O kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.0/bin/linux/amd64/kubectl \
&& chmod +x kubectl \
&& mv kubectl /usr/local/bin
WORKDIR /tmp
