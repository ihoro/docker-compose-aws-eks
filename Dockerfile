FROM docker/compose:1.25.0-rc2-alpine AS compose

FROM docker:19.03.1 AS runtime

COPY --from=compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose
RUN apk add --no-cache bash python py-pip \
  && pip install awscli \
  && wget https://storage.googleapis.com/kubernetes-release/release/v1.14.1/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && wget https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator -O /usr/local/bin/aws-iam-authenticator \
  && chmod +x /usr/local/bin/aws-iam-authenticator

