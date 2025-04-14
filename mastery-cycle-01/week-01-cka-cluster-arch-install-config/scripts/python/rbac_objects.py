#Common Kubernetes resource types
core_api_resources = ['pods', 'services,', 'namespaces', 'nodes', 'configmaps', 'secrets']

#Common kubernetes verbs
common_verbs = [ 'get', 'list', 'watch', 'create', 'delete']

print(f"Core Resources: {core_api_resources}")

print(f"Common Verbs: {common_verbs}")

# Added Deployments
core_api_resources.append('deployments')

print(f"Core Resources: {core_api_resources}")

# Index 2 retrieves the third item
print(f"The third common verb is: {common_verbs[2]}")

