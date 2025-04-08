# 📘 Zettel: crictl Inspection

## 🧩 Summary
`crictl` is a CLI tool to inspect and debug containers managed by a container runtime (like containerd or CRI-O).

## 🔍 Common Commands

```bash
crictl ps -a              # List all containers
crictl images             # List images
crictl inspect <id>       # Inspect a container
crictl logs <id>          # View logs from a container
```

## 🧠 Beginner Note
Use `crictl ps -a` often to view what the kubelet has created—especially static pods.

## 💡 Why this matters
- Works even when `kubectl` fails.
- Crucial for CKA static pod debugging.

## ✅ Used In
- CKA
- Troubleshooting static pods