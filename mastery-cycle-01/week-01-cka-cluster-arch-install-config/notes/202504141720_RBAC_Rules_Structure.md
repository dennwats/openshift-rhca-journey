---
id: 202504141720
title: RBAC Rules Structure
tags: [cka, rbac, role, clusterrole, rules, verbs, resources, apigroups]
source: SvV CKA L5.4, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** The `rules` section within a Role or ClusterRole defines the actual permissions. It's a list of rule objects.

**Key Snippet/Gotcha:** Each rule specifies:
* `apiGroups`: List of API groups the resources belong to (e.g., `[""]` for core, `["apps"]` for Deployments, `["batch"]` for Jobs).
* `resources`: List of resource types (e.g., `["pods"]`, `["deployments"]`, `["nodes"]`).
* `verbs`: List of actions allowed (e.g., `["get", "list", "watch"]`, `["create", "update", "patch", "delete"]`, `["*"]` for all).

**Related:** [[202504141710_RBAC_Role_Scope_Namespaced]] [[202504141715_RBAC_ClusterRole_Scope_Cluster_Wide]]
