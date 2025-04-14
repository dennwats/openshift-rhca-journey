---
id: 202504141735
title: RBAC Subjects (Users, Groups, ServiceAccounts)
tags: [cka, rbac, subject, user, group, serviceaccount]
source: SvV CKA L5.3, L5.5, k8s.io/docs/reference/access-authn-authz/rbac/
---
**Concept:** Subjects are the entities that receive permissions via RoleBindings or ClusterRoleBindings. Kubernetes recognizes Users, Groups, and ServiceAccounts.

**Key Snippet/Gotcha:**
* `Users`: Represent humans/external processes. K8s doesn't manage user objects; assumes external authentication. Specified by `kind: User`, `name: username`.
* `Groups`: Collections of users, often from external auth. Specified by `kind: Group`, `name: groupname`.
* `ServiceAccounts`: For processes *inside pods*. K8s *manages* SA objects. Specified by `kind: ServiceAccount`, `name: sa-name`, `namespace: ns-name`.

**Related:** [[202504141725_RBAC_RoleBinding_Purpose_Scope]] [[202504141730_RBAC_ClusterRoleBinding_Purpose_Scope]] [[202504141740_RBAC_ServiceAccount_Purpose]]
