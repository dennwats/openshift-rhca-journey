#!/bin/bash

# Script: etcd-backup.sh
# Purpose: Save a snapshot of etcd for backup or disaster recovery

set -e

echo "💾 Backing up etcd to /tmp/snapshot.db..."

ETCDCTL_API=3 etcdctl snapshot save /tmp/snapshot.db \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key

echo "✅ etcd snapshot created: /tmp/snapshot.db"

