#! /bin/bash

REG0=${REG0:-"opentlc"}
ENV0=${ENV0:-"production"}

tput setaf 3
echo "Bootstrapping channels for ${REG0} tracking branch ${ENV0}"
tput sgr0
echo

tput setaf 2
echo  "Creating namespaces and channels"
oc apply -f channels/${REG0}/
tput sgr0
echo

tput setaf 2
echo "Creating placement rules and bindings (packages)"
oc apply -k packages/subscriptions/${ENV0}
tput sgr0
echo

tput setaf 2
echo "Creating subscription for policy subscriptions"
oc apply -f policies/sb-${ENV0}.yaml
tput sgr0
echo

tput setaf 3
echo "All done"
tput sgr0
echo
