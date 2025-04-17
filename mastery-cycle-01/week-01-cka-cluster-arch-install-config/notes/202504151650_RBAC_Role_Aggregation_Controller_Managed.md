---
id: 202504151650 # Example ID
title: RBAC Role Aggregation (Controller Managed)
tags: [cka, rbac, clusterrole, aggregation, controller]
source: k8s.io/docs/reference/access-authn-authz/rbac/#aggregation-rule, SvV CKA L5.4 related
---
**Concept:** Kubernetes allows `ClusterRoles` to "aggregate" other `ClusterRoles`. This means permissions defined in one role can be automatically included in another using `aggregationRule` and label selectors.

**Key Snippet/Gotcha:** The built-in user-facing roles (`cluster-admin`, `admin`, `edit`, `view`) use this heavily. You can add permissions to `admin`, `edit`, or `view` by creating a *new* ClusterRole with your desired rules and adding a label like `rbac.authorization.k8s.io/aggregate-to-admin: "true"`. The Kubernetes controller manager automatically updates the aggregate role (e.g., `admin`) with the rules from roles matching the label selector. Useful for extending default roles without modifying them directly.

**Related:** [[202504141715_RBAC_ClusterRole_Scope_Cluster_Wide]]
