# 📘 Zettel: Kubernetes Architecture

## 🧩 Summary
Kubernetes is a container orchestration platform with two main roles:

- **Control Plane**: API server, controller manager, scheduler, etcd
- **Worker Node**: kubelet, kube-proxy, container runtime

## 🔧 Components

- `kube-apiserver`: handles communication
- `etcd`: stores cluster state
- `kube-controller-manager`: maintains desired state
- `scheduler`: assigns pods
- `kubelet`: runs on each node to manage containers

## 🧠 Beginner Note
Every command you run with `kubectl` talks to the API server.

## ✅ Used In
- CKA
- RHCE (conceptual understanding)