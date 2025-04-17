#!/usr/bin/env python3
import subprocess

# Define a function to print details about a list
# 'items' is a parameter - it will hold the list we pass in when calling the function
def print_list_details(items):
    # Print a header showing the size of the list received
    print(f"\n--- Analyzing List (Size: {len(items)}) ---")

    # Check the size of the list using if/elif/else
    if len(items) == 0:
        print("The list is empty.")
    elif len(items) < 5:
        print("This is a short list (less than 5 items).")
    else:
        print("This is a longer list (5 or more items).")

    # Loop through each item in the list that was passed in
    print("Items:")
    # 'item' is a temporary variable holding the current list element for each loop iteration
    for item in items:
        # Print each item with a dash prefix
        print(f"- {item}")

# Define a list of strings for core resources
core_api_resources = ['pods', 'services', 'namespaces', 'nodes', 'configmaps', 'secrets']
# Define a list of strings for common actions
common_verbs = ['get', 'list', 'watch', 'create', 'delete']

# Add 'deployments' to the resources list using the append method
core_api_resources.append('deployments')
# Add a comment explaining the modification
# Added 'deployments'

# Call the function, passing the core_api_resources list as the arguement
print("--- Processing Resources List ---")
print_list_details(core_api_resources)

# Call the function, passing the common_verbs list as the argument
print("--- Processing Verbs List ---")
print_list_details(common_verbs)

# Example with an empty list
print("--- Processing Empty List ---")
empty_list = []
print_list_details(empty_list)

print("\n--- Script Finished ---")
