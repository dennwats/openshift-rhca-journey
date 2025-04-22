#!/usr/bin/env bash
# Fail on errors, unset vars, or pipeline failures
set -euo pipefail

# Directory watched by kubelet for static pod manifests
MANIFEST_DIR=/etc/kubernetes/manifests

# Default pod name and image if none provided
POD_NAME=${2:-hello-nginx}
IMAGE=${3:-nginx:stable}

# Function to create the static pod YAML
create_pod(){
  sudo tee "${MANIFEST_DIR}/${POD_NAME}.yaml" > /dev/null <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: ${POD_NAME}
  labels:
    app: static-demo
spec:
  containers:
  - name: ${POD_NAME}
    image: ${IMAGE}
    ports:
    - containerPort: 80
EOF
  echo "Created ${POD_NAME}.yaml in ${MANIFEST_DIR}"
}

# Function to delete the manifest and remove the static pod
delete_pod(){
  sudo rm -f "${MANIFEST_DIR}/${POD_NAME}.yaml"
  echo "Deleted ${POD_NAME}.yaml"
}

# Dispatch based on first argument
case "${1:-}" in
  create)
    create_pod
    ;;
  delete)
    delete_pod
    ;;
  *)
    echo "Usage: $0 {create|delete} [pod-name] [image]"
    exit 1
    ;;
esac

