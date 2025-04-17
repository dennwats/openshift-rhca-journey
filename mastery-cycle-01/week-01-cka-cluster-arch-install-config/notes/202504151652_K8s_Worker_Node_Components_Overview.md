---
id: 202504151652 # Example ID
title: K8s Worker Node Components Overview
tags: [cka, architecture, worker-node, kubelet, kube-proxy, cri]
source: SvV CKA L1, k8s.io/docs/concepts/overview/components/
---
**Concept:** Worker nodes run the actual application Pods as directed by the Control Plane. They host the necessary services to manage networking and run containers.

**Key Components & Roles:**
* **kubelet:** Agent running on each node. Ensures containers described in PodSpecs are running and healthy. Communicates with the API server. Does *not* manage containers directly created outside K8s.
* **kube-proxy:** Network proxy running on each node. Maintains network rules (using iptables, ipvs, etc.) to enable K8s Service networking concepts (routing traffic to correct Pod endpoints).
* **Container Runtime Interface (CRI):** Software responsible for running containers (e.g., containerd, CRI-O). Kubelet interacts with the CRI to manage container lifecycle. Docker Engine (pre v1.24 via dockershim) was also common.

**Related:** [[202504151651_K8s_Control_Plane_Components_Overview]] [[ID_Node_Maintenance_Commands]] [[ID_CNI_Installation]]
