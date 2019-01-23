FROM mesosphere/aws-cli

ENV KUBE_LATEST_VERSION="v1.13.0"
ENV HELM_LATEST_VERSION="v2.12.2"
WORKDIR /tmp

RUN apk --no-cache add openssl ca-certificates \
  && wget -q -O kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBE_LATEST_VERSION/bin/linux/amd64/kubectl \
  && chmod +x kubectl \
  && mv kubectl /usr/local/bin
RUN wget https://storage.googleapis.com/kubernetes-helm/helm-$HELM_LATEST_VERSION-linux-amd64.tar.gz \
 && tar -xvf helm-$HELM_LATEST_VERSION-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin
