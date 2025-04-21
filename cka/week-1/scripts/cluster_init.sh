#!/usr/bin/env bash
set-euo pipefail

# cluster_init.sh - One-shot control-plane bootstrap + join command printout

POD_CiDR="10.244.0.0/16"

echo "[1/3] Resetting any old cluster..."
sudo kubeadm reset -f >/dev/null 2>&1 || true
sudo rm -rf $HOME/.kube

echo "[2/3] Initialising control-plane..."
sudo kubeadm init --pod-network-cidr="$POD_CIDR"

echo "[3/3] Copying kubeconfig for kubectl..."
mkdir -p $HOME/.kube
sudo cp /etc/kubernetes/admin.conf $HOME/.kube/config

echo
echo "✅ Control-plane up. To add a worker, run the following JOIN command:"
sudo kubeadm token create --print-join-command
