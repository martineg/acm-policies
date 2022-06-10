# ACM policy examples

Workbench repo for defining and deploying ACM policies.

Inspiration from https://github.com/redhat-cop/acm-policies

# Structure

- `channels` defines this git repository
- `policies` defines individual policies, subscription to those using a _subscription of subscriptions_ model
- `packages` defines groupings of policies using _policysets_ to group placement of policies

*PolicySets requires ACM 2.5*

# Adding a new policy

1. Add new policy to `policies`
1. Add subscription to new policy under `policies/subscriptions`
1. Add policy to policyset under `packages/boms/<policy-package>`
    - Optionally create a new policyset to define a new/custom placement
