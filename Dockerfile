FROM docker:20.10.21-alpine3.16 AS runtime

RUN apk add --no-cache bash python3 py-pip \
  && pip install awscli \
  && wget https://storage.googleapis.com/kubernetes-release/release/v1.25.4/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl

