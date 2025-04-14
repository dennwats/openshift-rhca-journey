---
id: 202504141740
title: RBAC ServiceAccount Purpose
tags: [cka, rbac, serviceaccount, subject, pod, security]
source: SvV CKA L5.3, k8s.io/docs/reference/access-authn-authz/service-accounts-admin/
---
**Concept:** A `ServiceAccount` provides an identity for processes running *within a Pod*. Pods use their ServiceAccount's credentials (via a mounted token) to authenticate to the K8s API server.

**Key Snippet/Gotcha:** Every namespace has a `default` ServiceAccount. Pods use the `default` SA unless `spec.serviceAccountName` specifies otherwise. Permissions are granted to SAs via RoleBindings/ClusterRoleBindings. Essential for secure in-cluster app access to the API.

**Related:** [[202504141735_RBAC_Subjects_Users_Groups_ServiceAccounts]] [[202504141725_RBAC_RoleBinding_Purpose_Scope]]
