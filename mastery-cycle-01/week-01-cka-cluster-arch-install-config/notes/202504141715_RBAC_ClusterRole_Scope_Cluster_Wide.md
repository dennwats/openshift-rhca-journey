---
id: 202504141715
title: RBAC ClusterRole Scope (Cluster-Wide)
tags: [cka, rbac, clusterrole, scope, cluster]
source: SvV CKA L5.4, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** A `ClusterRole` defines permissions (rules) that apply **cluster-wide**. It's used for granting access to cluster-scoped resources OR namespaced resources across *all* namespaces.

**Key Snippet/Gotcha:** No `metadata.namespace` field is used. Can grant access to cluster resources (`nodes`, `namespaces`, `persistentvolumes`) or namespaced resources globally (`pods` in all namespaces), or non-resource URLs (`/healthz`).

**Related:** [[202504141710_RBAC_Role_Scope_Namespaced]] [[202504141730_RBAC_ClusterRoleBinding_Purpose_Scope]] [[202504141720_RBAC_Rules_Structure]]
