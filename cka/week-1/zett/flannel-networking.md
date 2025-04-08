# 📘 Zettel: Flannel Networking (CNI)

## 🧩 Summary
Flannel is a simple and popular Container Network Interface (CNI) used to enable pod networking.

It is often used in lab and exam setups due to its simplicity.

---

## 🧪 Setup Command
```bash
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```

---

## 🔍 Key Concept
- Needs to match the pod CIDR set during `kubeadm init`
- Adds `kube-flannel` pod in `kube-system` namespace

---

## 🧠 Beginner Note
If Flannel doesn’t match your pod CIDR, your pods won’t talk to each other.

✅ Used In:
CKA (Networking & Installation)