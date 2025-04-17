---
id: 202504151651 # Example ID
title: K8s Control Plane Components Overview
tags: [cka, architecture, control-plane, apiserver, etcd, scheduler, controller-manager]
source: SvV CKA L1, k8s.io/docs/concepts/overview/components/
---
**Concept:** The Control Plane manages the Kubernetes cluster state and worker nodes. It typically runs on dedicated nodes (or a single node). Core components make decisions about the cluster.

**Key Components & Roles:**
* **kube-apiserver:** Exposes the K8s API. Frontend for control plane; handles REST requests, validates/processes them.
* **etcd:** Consistent, highly-available key-value store used as K8s' backing store for all cluster data (the cluster's "brain").
* **kube-scheduler:** Watches for newly created Pods with no assigned node and selects a node for them to run on based on constraints/requirements.
* **kube-controller-manager:** Runs controller processes (Node Ctrl, Replication Ctrl, Endpoint Ctrl, SA Ctrl, etc.) that regulate cluster state by tracking resources and reconciling desired state vs actual state.
* **cloud-controller-manager (Optional):** Interacts with cloud provider APIs (if applicable) for things like LoadBalancers, Nodes, Routes.

**Related:** [[202504151652_K8s_Worker_Node_Components_Overview]] [[202504151653_Kubeadm_Init_Process_Conceptual_Steps]] [[ID_Etcd_Backup_Procedure]]
