# 🚀 Week 1 – Spinning Up Your Kubernetes Cluster (CKA)

Welcome to the first lab in my RHCA + CKA journey. This week is all about **getting your hands dirty** with Kubernetes. We'll use `kubeadm` to set up a cluster manually — no fancy cloud tools, no shortcuts.

If you're new to this, don't worry — I was too. I’ll walk you through each step like I wish someone had done for me.

---

## 🧠 What You’ll Learn

- How Kubernetes components fit together (control plane vs worker)
- Setting up your own cluster using `kubeadm`
- Installing Flannel for networking
- Verifying with `kubectl`, `crictl`, and `systemctl`
- Taking an etcd backup

---

## 🛠️ Prerequisites

- One or two VMs (Ubuntu 22.04 LTS)
- At least 2 CPUs and 2GB RAM each
- Internet access from your VMs
- `kubeadm`, `kubelet`, `kubectl` installed  
  (Follow [this guide](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/) if you haven’t)

---

## 1️⃣ Initialize the Control Plane

```bash
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
```

🔍 **Why this step?**  
This sets up the Kubernetes control plane and makes this node your “boss” node.

🧠 **Beginner Note:**  
If it fails, check if swap is disabled (`sudo swapoff -a`) and if required kernel modules are loaded (`br_netfilter`).

<!-- screenshot: init-cluster.png -->

---

## 2️⃣ Set Up `kubectl` Access

```bash
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```

🔍 **Why this step?**  
You need `kubectl` access to actually talk to your cluster.

🧠 **Beginner Note:**  
This config lives in `~/.kube/config` and is required every time you use `kubectl`.

<!-- screenshot: kubeconfig-verified.png -->

---

## 3️⃣ Install Flannel (CNI Plugin)

```bash
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```

🔍 **Why this step?**  
Flannel provides the network your pods will use to talk to each other.

🧠 **Beginner Note:**  
If you skip this, your pods will be “Pending” forever. CNI is required!

<!-- screenshot: flannel-installed.png -->

---

## 4️⃣ Check Node + Pod Status

```bash
kubectl get nodes -o wide
kubectl get pods -A
```

🔍 **Why this step?**  
Verifies everything came up cleanly after `kubeadm init`.

🧠 **Beginner Note:**  
You should see the `kube-system` pods running and your node in `Ready` state.

<!-- screenshot: node-and-pods-ready.png -->

---

## 5️⃣ Enable `kubectl` Autocompletion (Optional but Nice)

```bash
echo 'source <(kubectl completion bash)' >> ~/.bashrc
echo 'alias k=kubectl' >> ~/.bashrc
echo 'complete -F __start_kubectl k' >> ~/.bashrc
source ~/.bashrc
```

🔍 **Why this step?**  
Speeds up your workflow and avoids typos. Autocomplete with Tab FTW.

<!-- screenshot: autocomplete-working.png -->

---

## 6️⃣ Create a Static Pod (Manually)

Let’s place a pod manifest directly in the kubelet manifest folder:

```bash
sudo nano /etc/kubernetes/manifests/my-static-pod.yaml
```

Paste in this:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-static-pod
  namespace: default
spec:
  containers:
    - name: nginx
      image: nginx
      ports:
        - containerPort: 80
```

Then save and exit. It will auto-deploy.

```bash
kubectl get pods
```

🔍 **Why this step?**  
Static pods are directly managed by the node’s kubelet, not the API server.

🧠 **Beginner Note:**  
This is great for control plane components like etcd, scheduler, etc.

<!-- screenshot: static-pod-deployed.png -->

---

## 7️⃣ Check Static Pod With `crictl`

```bash
crictl ps -a
```

🔍 **Why this step?**  
`crictl` talks directly to the container runtime (`containerd`) to show what’s really running.

🧠 **Beginner Note:**  
This is like `docker ps` but for Kubernetes container runtimes.

<!-- screenshot: crictl-output.png -->

---

## 8️⃣ Install Metrics Server (Optional)

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Then validate:

```bash
kubectl top nodes
```

<!-- screenshot: metrics-server-nodes.png -->

---

## 9️⃣ Backup `etcd`

You’ll need this tool:

```bash
sudo apt install etcd-client
```

Then run:

```bash
ETCDCTL_API=3 etcdctl snapshot save /tmp/snapshot.db \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key
```

🔍 **Why this step?**  
This backs up all your cluster data (pods, config, etc.). Critical for disaster recovery.

🧠 **Beginner Note:**  
Only works on the control plane, and you must use `sudo` if permissions are tight.

<!-- screenshot: etcd-backup-complete.png -->

---

## ✅ What I Learned

- I now understand **how kubeadm builds a cluster**
- Learned how to inspect node health with `kubectl` + `crictl`
- Realized that **networking (Flannel)** is a make-or-break step
- Practiced taking a **production-grade backup**

---

## 📂 Folder Structure

```
cka/
  week-1/
    lab-cluster-setup/
      README.md
      scripts/
        etcd-backup.sh
        week-1-check-cluster.sh
      screenshots/
      blog-this.md
    zett/
      ...
```

---

## 📝 Final Note

This week isn’t just about "getting a cluster up." It’s about knowing **what runs it**, how to check it, and how to recover it if it breaks. That’s the foundation of a true Kubernetes Admin.

Next week: we go deeper into node scheduling, pod behavior, and deployment types.

Stay sharp.

– @dennwats 🚀

