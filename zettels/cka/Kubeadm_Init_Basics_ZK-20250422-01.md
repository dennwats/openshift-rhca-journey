# Kubeadm_Init_Basics_ZK-20250422-01

`kubeadm init --pod-network-cidr=10.244.0.0/16` bootstraps the **control‑plane** by:

1. Creating `/etc/kubernetes/manifests` with static‑pod YAML for kube‑api‑server, etcd, scheduler, controller‑manager.  
2. Generating a **bootstrap token** and printing a ready‑to‑paste `kubeadm join` command.  
3. Writing an admin kubeconfig at `/etc/kubernetes/admin.conf` (copy this to `$HOME/.kube/config` to enable `kubectl`).  

**Why it matters:**  
- Every CKA “create a cluster” task starts with `kubeadm init`; knowing the default locations lets you troubleshoot quickly (e.g., edit a static‑pod manifest to fix flags).  
- The printed `kubeadm join` line can be re‑generated anytime with  
  ```bash
  sudo kubeadm token create --print-join-command

**Links**  
- [Kubernetes_Cluster_Architecture_ZK-20250419-01.md](Kubernetes_Cluster_Architecture_ZK-20250419-01.md)  
- [Static_Pods_Basics_ZK-20250422-02.md](Static_Pods_Basics_ZK-20250422-02.md)

