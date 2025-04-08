# OpenShift & DevOps: Advanced Projects & Skills

Welcome! This repository highlights my **hands-on work** in:

- **Kubernetes / OpenShift Administration**
- **Linux & Automation** (Bash, Python, Ansible)
- **GitOps & DevOps** (CI/CD pipelines, Helm, Operators)
- **Security & Compliance** (SELinux, STIG, container security)

Each folder contains **practical labs, scripts, and notes** from my continuous learning and real-world experimentation. The focus is on **enterprise-level** and **government/DoD-style** workflows, showcasing in-depth cluster management, automation pipelines, and secure configurations.

---

## Repository Structure

```plaintext
openshift-devops-showcase/
├─ README.md            <-- You are here (top-level overview)
├─ Master_Checklist.md  <-- High-level task list (optional)
├─ Week01/
│   ├─ README.md        <-- Lab details, scripts for Week 1
│   └─ scripts/         <-- Bash, Python, or Ansible code
├─ Week02/
│   ├─ README.md
│   └─ scripts/
├─ ...
└─ Additional_Notes/    <-- Optional extra references
WeekXX folders: Feature code examples, step-by-step labs, and commentary on Kubernetes/OpenShift tasks, Bash/Python scripting, or GitOps strategies.

scripts/ subfolders: Contain well-documented code to illustrate how I automate tasks like node provisioning, service deployment, or security checks.
Key Technologies & Expertise
Kubernetes / OpenShift

Architecture, installation (kubeadm, CRC/OKD), day-2 ops (upgrades, RBAC), etcd backup/restore.

Securing clusters with best practices (PodSecurity, SCC, custom Operators).

Linux & Automation

Bash & Python scripting for cluster checks, log parsing, system provisioning.

Ansible roles to configure RHEL, manage SELinux policies, and handle network settings.

GitOps & DevOps

Leveraging Git, CI/CD pipelines, Helm charts, Tekton, and Argo CD for streamlined deployments.

Infrastructure as Code (IaC) approaches for consistent environment management.

Security & Compliance

Familiarity with DISA STIG, SELinux, firewalld, security scanning (OpenSCAP).

Hardening container images, role-based access control, secrets management.

Highlights
OpenShift Networking & Scaling

See detailed examples provided in individual WeekXX folders (e.g., multi-node scaling, TLS-secured routes, resource quotas).

Linux Automation

Check the WeekXX/scripts/ansible/ folder for Ansible roles covering system setup, SELinux booleans, user management, and firewall rules.

Python & Bash Tooling

Examples in WeekXX/scripts/python/ and WeekXX/scripts/bash/ demonstrate scripts that call oc or kubectl for tasks like backups and cluster health checks.

Security Hardening

Refer to the relevant WeekXX documentation for examples of using STIG references, OpenSCAP scanning, and implementing restricted SCC policies.

Why This Matters
Real-World Scenarios: Each lab or script is modeled after enterprise or GovTech contexts, reflecting the high standards and compliance needs for secure, large-scale environments.

In-Depth Skill Demonstration: From cluster creation to advanced networking and automation, this repository shows a range of capabilities critical for modern DevOps roles.

Continuous Improvement: Weekly script updates and improvements demonstrate a commitment to perpetual learning and refinement.

How to Explore
Browse Week Folders: Each WeekXX/README.md outlines weekly accomplishments and serves as a running log of advanced containerization and automation tasks.

Review the Scripts: Inside scripts/, you’ll find line-by-line commented examples in Bash, Python, and Ansible.

Follow the Commits: Git commits document incremental improvements, bug fixes, and feature additions—demonstrating a robust version control workflow.

Contact & Collaboration
Issues / Pull Requests: Feel free to open an issue or submit a pull request if you have suggestions or want to discuss improvements.

Hiring or Project Inquiries: Please reach out via GitHub or use the contact information in my profile to discuss how my skills can support your DevOps or infrastructure needs.

Disclaimer
All code and notes in this repository are for demonstration and educational purposes only. This material is not official training content from Red Hat or CNCF; use and adapt as needed.

Thank you for exploring my OpenShift & DevOps showcase. I trust that these projects will illustrate the expertise and reliability required for high-impact roles in cloud-native and enterprise environments. Feel free to connect!
