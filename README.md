### Sctp Utils

This folder contains a set of tools to try out the sctp protocol in an ocp4 cluster.
**This should not be used if not in tests scenarios.**

- `sctp_policy_ds.yaml`: a daemonset to apply the selinux policies to the nodes in order to enable the creation and the connection of sctp sockets. Sources of the docker image under `policy`. The policy was generated using `audit2allow`
- `unblacklist_sctp.yaml`: a [Machine Config](https://github.com/openshift/machine-config-operator) configuration to un-blacklist the scp module.
