FROM docker:latest

ENV TRIVY_VERSION 0.10.1

RUN apk add --no-cache --virtual .deps curl

RUN set -ex \
    && curl -sSL https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz | tar xz \
    && mv trivy /usr/local/bin/trivy
