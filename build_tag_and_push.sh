#!/usr/bin/env bash

docker build -t icf-stage/docker .
docker tag icf-stage/docker:latest 828207117389.dkr.ecr.eu-west-1.amazonaws.com/icf-stage/docker:latest
docker push 828207117389.dkr.ecr.eu-west-1.amazonaws.com/icf-stage/docker:latest
