# Week 1: CKA - Cluster Architecture, Installation, Configuration

**Module:** CKA Module 1 (Based on Sander Van Vugt CKA 4th Ed.)
**Duration:** April 14th - April 20th, 2025
**Goal:** Understand core Kubernetes architecture, RBAC, install a cluster using Kubeadm, manage nodes, perform etcd backup/restore, handle upgrades, and build foundational integrated skills. Aiming for ~3 Week CKA completion.

---

## Goals for this Week:

* [X] Understand RBAC Concepts (Role, ClusterRole, Binding, SA) & Practice YAML ` --dry-run` *(Mon)*
* [ ] Understand K8s Architecture Components (Control Plane, Worker Nodes) *(Tue Plan)*
* [ ] Understand `kubeadm init` Process Conceptually *(Tue Plan)*
* [ ] Finalize Lab VM Environment & Install Prerequisite Packages *(Tue Plan)*
* [ ] Successfully Initialize Control Plane with `kubeadm init` *(Wed Plan)*
* [ ] Install CNI Plugin *(Wed Plan)*
* [ ] Apply & Test RBAC Rules on Live Cluster *(Wed Plan)*
* [ ] Join Worker Nodes with `kubeadm join` *(Thu Plan)*
* [ ] Perform first Etcd Backup (`etcdctl snapshot save`) *(Thu Plan)*
* [ ] Master Etcd Backup & **Restore** Procedure via Repetition *(Fri Plan)*
* [ ] Perform Cluster Upgrade (`kubeadm upgrade`) *(Fri Plan)*
* [ ] Practice Node Management (`drain`, `cordon`, `crictl`) *(Sat Plan)*
* [ ] Review all Module 1 Concepts *(Sat/Sun Plan)*
* [X] Practice Initial Integrated Skills (Tmux, Python Lists, Bash Loops, Basic Regex) *(Mon)*
* [ ] Continue Integrated Skills Development *(Daily)*

---

## Learnings & Notes Summary (Updated Mon Apr 14):

* **RBAC:** Focused on the core concepts of Roles (namespaced permissions) vs ClusterRoles (cluster-wide permissions) and how RoleBindings/ClusterRoleBindings link these to Subjects (Users, Groups, ServiceAccounts). Practiced writing basic Role and RoleBinding YAML and validating the syntax locally using `kubectl apply --dry-run=client`. Key takeaway is understanding the scope difference.
    * See notes in [`./notes/`](./notes/):
        * `202504141710_RBAC_Role_Scope_Namespaced.md`
        * `202504141715_RBAC_ClusterRole_Scope_Cluster_Wide.md`
        * *(Add links to other notes as you review/create them)*
* **Integrated Skills:** Started setting up Tmux workflow. Practiced basic Python list creation/manipulation and Bash loops with command substitution. Reviewed fundamental Regex characters.
* *(Add summaries for K8s Arch, Kubeadm, Etcd, etc., as you cover them throughout the week)*

---

## Scripts Developed:

*(Link to scripts in the `../scripts/` directory relative to this README)*

* [`../scripts/python/rbac_objects.py`](../scripts/python/rbac_objects.py): Initial script defining lists of common RBAC verbs and resources. *(Plan: Add functions, file I/O later)*
* [`../scripts/bash/list_files.sh`](../scripts/bash/list_files.sh): Basic script demonstrating `for` loop with `ls` command substitution. *(Plan: Add arguments, functions later)*
* *(Add other scripts as created)*

---

## Challenges & Solutions:

*(Document any significant hurdles encountered this week and how they were overcome. E.g., "Had trouble with YAML indentation, fixed using VS Code YAML extension." or "Kubeadm init failed due to..., resolved by...")*

* Initial confusion with Regex examples provided, clarified through discussion.

---

## Screenshots:

*(Embed screenshots demonstrating successful lab completion or key configurations. Add them throughout the week!)*

**Example: RBAC YAML Validation Output**
