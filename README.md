# An image with preinstalled: docker, docker-compose, aws CLI, kubectl CLI

Your CI builds can be based on this image if you need to do some docker-compose tricks like testing, deploy something to AWS, and talk to AWS EKS' k8s clusters. Any specific param and auth details can be provided via CI variables/secrets.

## docker-compose-aws-eks:20.10.21-2.12.2-legacy
Alpine linux with the following (based on docker:20.10.21-alpine3.16 image):
- docker 20.10.21
- docker-compose 1.12.2
- aws-cli 1.27.9
- bash 5.1.16
- python 3.10.8
- pip 22.1.1

Legacy versions of aws/kubectl (to ease migration from 19.03.1-1.25.0-rc2):
- kubectl 1.14.1
- aws-iam-authenticator 1.12.7/2019-03-27

## docker-compose-aws-eks:19.03.1-1.25.0-rc2
Alpine linux with the following (based on docker:19.03.1 image):
- docker 19.03.1
- docker-compose 1.25.0-rc2
- aws-cli 1.16.230
- kubectl 1.14.1
- aws-iam-authenticator 1.12.7/2019-03-27
- bash 5.0.0
- python 2.7.16
- pip 18.1

