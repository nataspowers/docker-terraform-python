# terraform-python

A Docker container that includes:
- Terraform
- Python
- postgresql
- git
- bash
- jq
- zip
- psycopg2
- aws cli

Pre-built containers are available on Dockerhub:
https://hub.docker.com/r/nataspowers/terraform-python

## Versioning
Container versions are as follows:

```
<tf-version>-<revision>
```

So for example, `0.12.9-1` would be the first container revision with Terraform 0.12.9.

## Building for Dockerhub

```
# Build the container
$ docker build . -t nataspowers/terraform-python:<tf-version>-<revision>

# Push to Dockerhub
$ docker push nataspowers/terraform-python:<tf-version>-<revision>
```

Latest build is done automatically on docker-hub, off of master branch
