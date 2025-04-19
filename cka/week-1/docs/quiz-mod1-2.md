What components run on a control‑plane node?
kube‑apiserver ,etcd, kube-controller-manager, kube-sceduleer, cloud-controller-manager

Which sysctl settings are required for pod networking?
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
# Enable IPv4 forwarding
net.ipv4.ip_forward                 = 1


How do you join a worker to a cluster with a congfig file?
apiVersion: kubeadm.k8s.io/v1beta3
kind: JoinConfiguration
discovery:
  bootstrapToken:
    token: <your-token>
    apiServerEndpoint: <control-plane:6443>
    caCertHashes:
      - sha256:<hash>
nodeRegistration:
  name: <worker-node-name>
  criSocket: /var/run/dockershim.sock

kubeadm join --config join-config.yaml


Difference between DaemonSet and StatefulSet?
DaemonSet:
Ensure exactly one Pod copy on each (or selected) node for node‑level services (e.g. log collectors, monitoring agents).

StatefulSet:
Manage stateful applications that require stable network IDs and persistent storage (e.g. databases, key/value stores).


How does kubeadm init differ when using --config vs flags?
Flags (--foo=bar): Quick, one‑off overrides of built‑in kubeadm settings. Handy for simple clusters or demos but limited to the subset of options exposed as CLI flags and harder to reproduce or version‑control.

Config file (--config file.yaml): A single YAML bundle (InitConfiguration, ClusterConfiguration, etc.) that exposes every kubeadm setting—including advanced fields not available as flags. It’s reproducible, auditable (check into Git), and the recommended approach for any production or automated setup.
