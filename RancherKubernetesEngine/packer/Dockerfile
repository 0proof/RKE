FROM alpine:latest
MAINTAINER "The Packer Team <packer@hashicorp.com>"

ENV PACKER_VERSION=1.6.0
ENV PACKER_SHA256SUM=a678c995cb8dc232db3353881723793da5acc15857a807d96c52e96e671309d9

RUN apk add --update git bash wget openssl ansible py3-pip

RUN pip install ansible-lint

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./
ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_SHA256SUMS ./

RUN sed -i '/.*linux_amd64.zip/!d' packer_${PACKER_VERSION}_SHA256SUMS
RUN sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS
RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin
RUN rm -f packer_${PACKER_VERSION}_linux_amd64.zip

ENTRYPOINT ["/bin/packer"]