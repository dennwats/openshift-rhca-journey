---
id: 202504151653 # Example ID
title: Kubeadm Init Process Conceptual Steps
tags: [cka, kubeadm, init, cluster-creation, bootstrap]
source: SvV CKA L2, k8s.io/docs/reference/setup-tools/kubeadm/kubeadm-init/
---
**Concept:** `kubeadm init` bootstraps a Kubernetes control plane node by running a series of checks and procedures to set up the necessary components and configurations.

**Key High-Level Steps (Conceptual):**
1.  **Preflight Checks:** Verifies system state (OS compatibility, required ports open, prerequisites installed like CRI).
2.  **Certificate Generation:** Creates necessary CAs and certificates for API server, etcd, kubelet communication.
3.  **Kubeconfig Files:** Generates kubeconfig files for controllers, scheduler, kubelet, and the administrator (`admin.conf`).
4.  **Static Pod Manifests:** Writes static pod manifests for control plane components (etcd, kube-apiserver, kube-controller-manager, kube-scheduler) to `/etc/kubernetes/manifests/`. Kubelet watches this directory and creates the pods.
5.  **Control Plane Marking:** Taints the control plane node (`node-role.kubernetes.io/control-plane:NoSchedule`) so regular workloads don't run on it by default.
6.  **Cluster Info Storage:** Stores cluster info (like ClusterConfiguration) in a ConfigMap (`kubeadm-config`) in the `kube-system` namespace.
7.  **Bootstrap Tokens:** Generates bootstrap tokens for joining nodes (`kubeadm token create`).
8.  **Essential Addons:** May install essential addons like CoreDNS and kube-proxy via DaemonSet.
9.  **Output:** Prints commands needed to configure `kubectl` for the user and the `kubeadm join` command for worker nodes.

**Related:** [[202504151651_K8s_Control_Plane_Components_Overview]] [[ID_Kubeadm_Join_Process]] [[ID_CNI_Installation]]
