# ZK-20250419-03: Node Roles & Taints

- **Master (control‑plane) nodes** carry a `node-role.kubernetes.io/master` taint by default to prevent general pods from scheduling on them.  
- **Worker** nodes run application workloads.  
- You can override scheduling via `kubectl taint node …` or by adding tolerations to pod specs.

**Links:**
- [Kubernetes_Cluster_Architecture_ZK-20250419-01.md](Kubernetes_Cluster_Architecture_ZK-20250419-01.md)
- [Kubernetes_Distributions_ZK-20250419-02.md](Kubernetes_Distributions_ZK-20250419-02.md)

