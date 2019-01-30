FROM alpine as builder
LABEL maintainer "John Laswell <john.n.laswell@gmail.com>"

ARG KUBE_VERSION=v1.11.7

RUN apk --no-cache add ca-certificates curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    chmod +x ./usr/local/bin/kubectl

FROM builder

RUN apk --no-cache --update add ca-certificates

WORKDIR /root
ENTRYPOINT ["kubectl"]
CMD ["help"]
