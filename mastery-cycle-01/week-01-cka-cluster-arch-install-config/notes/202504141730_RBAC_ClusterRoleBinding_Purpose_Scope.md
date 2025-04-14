---
id: 202504141730
title: RBAC ClusterRoleBinding Purpose and Scope
tags: [cka, rbac, clusterrolebinding, binding, cluster, subject]
source: SvV CKA L5.5, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** A `ClusterRoleBinding` grants the permissions defined in a `ClusterRole` to a set of `subjects` **across the entire cluster**.

**Key Snippet/Gotcha:** It is cluster-scoped (no `metadata.namespace`). Used for granting cluster-admin rights or permissions to cluster-scoped resources, or access to namespaced resources across *all* namespaces. It *must* reference a `ClusterRole` in its `roleRef`.

**Related:** [[202504141715_RBAC_ClusterRole_Scope_Cluster_Wide]] [[202504141725_RBAC_RoleBinding_Purpose_Scope]] [[202504141735_RBAC_Subjects_Users_Groups_ServiceAccounts]]
