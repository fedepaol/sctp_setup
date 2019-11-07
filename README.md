### Sctp Utils

This folder contains a set of tools to try out the sctp protocol in an ocp4 cluster.
**This should not be used if not in tests scenarios.**

- `00-featuregate.yaml`: enables the sctp feature gate
- `01-sctp_policy_ds.yaml`: a daemonset to apply the selinux policies to the nodes in order to enable the creation and the connection of sctp sockets. Sources of the docker image under `policy`. The policy was generated using `audit2allow`
- `02-enable_sctp_module.yaml`: a [Machine Config](https://github.com/openshift/machine-config-operator) configuration to un-blacklist the scp module and load it at boot time.
- `03-switch_to_rt_kernel.yaml`: a daemonset that switches the rhcos kernel with the real time version, not directly related to sctp. *Note that this will reboot the nodes*

`client.yaml`, `server.yaml` are two pods containing sctp tools ([courtesy of William Caban](https://github.com/williamcaban/ocp4-sctp)) to test the connection
`server_service.yaml` creates a clusterip service on the server

### NOTE

At the moment the configuration daemons are not deleted once the configuration is completed, so in case of restart they _could_ try to reapply the configuration of the node. As noted before, this is **experimental and for testing purpouses only**
