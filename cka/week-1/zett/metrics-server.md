# 📘 Zettel: Metrics Server

## 🧩 Summary
`metrics-server` collects resource usage metrics (CPU, memory) from kubelets and exposes them via the Kubernetes API.

## 🔍 Commands

```bash
kubectl top nodes
kubectl top pods
```

## 🧠 Beginner Note
`metrics-server` is NOT installed by default. You must apply it manually:

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

## ✅ Used In
- CKA
- Real-world monitoring setups