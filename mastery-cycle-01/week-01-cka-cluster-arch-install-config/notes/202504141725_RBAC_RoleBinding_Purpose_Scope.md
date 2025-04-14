---
id: 202504141725
title: RBAC RoleBinding Purpose and Scope
tags: [cka, rbac, rolebinding, binding, namespace, subject]
source: SvV CKA L5.5, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** A `RoleBinding` grants the permissions defined in a `Role` to a set of `subjects` (users, groups, service accounts), but **only within the specific namespace** where the RoleBinding itself exists.

**Key Snippet/Gotcha:** It links a namespaced `Role` to subjects *for that namespace*. It *can* reference a `ClusterRole`, but still only grants those permissions *within the RoleBinding's namespace*. `metadata.namespace` is required.

**Related:** [[202504141710_RBAC_Role_Scope_Namespaced]] [[202504141730_RBAC_ClusterRoleBinding_Purpose_Scope]] [[202504141735_RBAC_Subjects_Users_Groups_ServiceAccounts]] [[202504141715_RBAC_ClusterRole_Scope_Cluster_Wide]]
