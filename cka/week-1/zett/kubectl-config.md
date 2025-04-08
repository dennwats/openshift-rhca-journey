# 📘 Zettel: kubectl Configuration

## 🧩 Summary
After `kubeadm init`, kubectl needs to be configured by copying the admin.conf file to your user's home directory.

---

## 💻 Command
```bash
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```

---

## 💡 Why This Matters
kubectl needs this file to connect to the cluster as admin.

---

## 🧠 Beginner Note
kubectl will give you “connection refused” or “permission denied” unless the config file is set correctly.

✅ Used In:
CKA, RHCE