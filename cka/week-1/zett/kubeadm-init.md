# 📘 Zettel: kubeadm init

## 🧩 Summary
`kubeadm init` is the primary command used to initialize a Kubernetes control plane node.

It sets up the control plane components, generates certificates, and provides the join command for worker nodes.

---

## 🔧 Key Options
- `--pod-network-cidr`: Required for certain CNIs like Flannel (e.g., 10.244.0.0/16)
- `--config`: Use a configuration YAML for advanced setups

---

## 📦 Example
```bash
kubeadm init --pod-network-cidr=10.244.0.0/16
```

---

## 🧠 Beginner Note
Don't memorize the whole output — focus on saving the kubeconfig and running the join command.

You’ll find your kubeconfig here after init:
```bash
/etc/kubernetes/admin.conf
```

✅ Used In:
CKA (cluster setup)
RHCE (automated deployment)