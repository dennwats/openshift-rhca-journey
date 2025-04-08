# 📘 Zettel: etcd Backup & Restore

## 🧩 Summary
etcd stores the Kubernetes cluster state. Backing up etcd ensures disaster recovery capability.

## 🔐 Backup Command

```bash
ETCDCTL_API=3 etcdctl snapshot save /tmp/snapshot.db \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key
```

## 🔁 Restore Command
```bash
ETCDCTL_API=3 etcdctl snapshot restore /tmp/snapshot.db \
  --data-dir /var/lib/etcd-from-backup
```

## 💡 Why this matters
- CKA exam tests etcd backup frequently.
- Restoring requires understanding of certs and cluster state.

## 🧠 Beginner Note
You don’t have to memorize paths—script them!