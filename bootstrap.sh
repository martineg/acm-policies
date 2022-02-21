#! /bin/bash

REG0=${REG0:-"opentlc"}
ENV0=${ENV0:-"production"}

oc apply -f channels/${REG0}/
oc apply -k packages/subscriptions/${ENV0}
oc apply -f policies/sb-${ENV0}.yaml
