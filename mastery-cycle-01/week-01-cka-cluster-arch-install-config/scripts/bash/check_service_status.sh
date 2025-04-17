#!/bin/bash
# Script to check the status of a systemd service using a function.

# Function to check service status and return exit code
check_status() {
	# Print message indicating which service is being checked
	# "$1" refers to the first argument passed to the function
	echo "Checking status of service: $1..."

	# Run systemctl is-active, redirecting normal output so we only care about exit code
	# > /dev/null sends standard output to nowhere
	systemctl is-active "$1" > /dev/null

	# Store the exit status ($?) of the systemctl command in a local variable
	local exit_code=$?

	# Print the exit code received
	echo "$1 exit code: $exit_code (0 = active, non-zero = inactive/failed)"

	# Return the exit code from the function
	return $exit_code
}

# Service we want to check (change this to test others like 'sshd' or a non-existent one)
service_to_check="containerd"

# Call the function, passing the service name. Quote the variable.
check_status "$service_to_check"

# Check the exit status ($?) of the *function call itself*
# The function returned the exit_code from systemctl
if [ $? -eq 0 ]; then
	# If exit status was 0 (success/active)
	echo "RESULT: $service_to_check appears to be ACTIVE."
else
	# If exit status was non-zero (failure/inactive)
	echo "RESULTS: $service_to_check appears to be INACTIVE or FAILED."
fi

echo "Script finished."
