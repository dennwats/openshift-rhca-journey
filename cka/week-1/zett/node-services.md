# 📘 Zettel: Node Services (systemd)

## 🧩 Summary
Systemd is used to manage key Kubernetes services like `kubelet` and the container runtime (`containerd`, `dockerd`, etc.).

---

## 🔍 Key Commands
```bash
systemctl status kubelet
systemctl start kubelet
systemctl enable kubelet
```

```bash
systemctl status containerd
```

---

## 🧠 Beginner Note
kubelet fails to start if it doesn’t have a valid `/etc/kubernetes/manifests` config or is missing required components like CNI.

✅ Used In:
CKA (Node Troubleshooting)
RHCE (Service Automation)