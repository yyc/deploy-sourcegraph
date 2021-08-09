#!/bin/sh

set -ex

cd "$(dirname ${BASH_SOURCE[0]})"

kubectl apply -f mandatory.yaml # this should be deployed first so that the namespace is created
kubectl apply -f deploy-tls-termination.yaml  # for aws withi TLS termination in load balancer
