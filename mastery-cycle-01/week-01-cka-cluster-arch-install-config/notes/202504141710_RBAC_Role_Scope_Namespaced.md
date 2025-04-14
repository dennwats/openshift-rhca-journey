---
id: 202504141710
title: RBAC Role Scope (Namespaced)
tags: [cka, rbac, role, scope, namespace]
source: SvV CKA L5.4, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** A Kubernetes `Role` defines permissions (rules: verbs on resources) that apply *only within a single, specific namespace*. It cannot grant access outside that namespace.

**Key Snippet/Gotcha:** `metadata.namespace` must be specified in the Role's YAML. It only works for namespaced resources (like Pods, Services, ConfigMaps). Cannot grant access to cluster-scoped resources (like Nodes).

**Related:** [[202504141715_RBAC_ClusterRole_Scope_Cluster_Wide]] [[202504141725_RBAC_RoleBinding_Purpose_Scope]] [[202504141720_RBAC_Rules_Structure]]
