FROM python:3-alpine

ENV TERRAFORM_VERSION="0.12.9"

RUN apk add --update --no-cache \
      git \
      bash \
      zip \
      jq \
      postgresql && \
    apk add --update --no-cache --virtual .build-deps \
      gcc \
      unzip \
      curl \
      python3-dev \
      musl-dev \
      openssl \
      postgresql-dev && \
    pip install --no-cache-dir \
      awscli \
      boto3 \
      psycopg2 && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    apk del --no-cache .build-deps

ENTRYPOINT ["terraform"]
