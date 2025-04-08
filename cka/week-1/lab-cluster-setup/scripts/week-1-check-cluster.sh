#!/bin/bash

# Script: week-1-check-cluster.sh
# Purpose: Validate basic health and setup of your Kubernetes cluster (Week 1)

set -e

echo -e "\n🔍 Checking node status..."
kubectl get nodes -o wide || echo "❌ Unable to get nodes. Check kubeconfig."

echo -e "\n🔍 Checking pods in all namespaces..."
kubectl get pods -A || echo "❌ Unable to list pods. Check cluster state."

echo -e "\n🔍 Checking kubelet service..."
systemctl status kubelet | grep Active || echo "❌ kubelet service not active."

echo -e "\n🌐 Checking hostname and IP..."
hostnamectl
ip a | grep inet | grep -v 127.0.0.1

echo -e "\n💡 Tip: Add an alias to run this quickly in the future:"
echo "alias checkcluster='$(pwd)/week-1-check-cluster.sh'"

echo -e "\n📦 Validating static pod manifests..."
ls /etc/kubernetes/manifests || echo "⚠️ No static pods found or permission issue."

echo -e "\n📦 Checking container runtime (crictl)..."
which crictl && crictl ps -a || echo "⚠️ crictl not installed or not working"

echo -e "\n🔁 Systemd services check:"
systemctl is-active kubelet && echo "✔️ kubelet active" || echo "❌ kubelet not active"
systemctl status containerd | grep Active || echo "⚠️ containerd may have issues"

echo -e "\n🔐 Verifying basic RBAC (ClusterRoles)..."
kubectl get clusterrolebindings | head -n 5 || echo "⚠️ RBAC roles may not be configured"

echo -e "\n📦 Checking for metrics-server..."
kubectl get deployment metrics-server -n kube-system || echo "⚠️ metrics-server not found"

echo -e "\n📦 Looking for kubeadm config..."
[ -f kubeadm-config.yaml ] && echo "✔️ kubeadm config file present" || echo "⚠️ kubeadm-config.yaml missing"

echo -e "\n💾 Verifying etcd snapshot if it exists..."
ETCDCTL_API=3 etcdctl snapshot status /tmp/snapshot.db || echo "⚠️ etcd snapshot not found or invalid"

echo -e "\n✅ Cluster check complete. Review outputs above for any ❌ or ⚠️ warnings."

