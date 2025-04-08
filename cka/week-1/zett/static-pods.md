# 📘 Zettel: Static Pods

## 🧩 Summary
Static pods are directly managed by `kubelet`, not the API server.

## 🗂️ Manifests Location
```bash
/etc/kubernetes/manifests/
```

Any file placed here will be run as a static pod.

## 🔍 Validate
```bash
crictl ps -a
kubectl get pods -A
```

## 🧠 Beginner Note
Static pods won’t show up with `kubectl get pods` unless using `-A` for all namespaces.

## ✅ Used In
- CKA
- Troubleshooting cluster node components