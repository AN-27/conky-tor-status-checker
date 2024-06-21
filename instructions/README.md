# Conky Tor Status Checker

This script is used to check if the IP address is routed through Tor and display the status in Conky.

## Instructions

1. Create the file `check_ip.sh` in your home directory:

   ```sh
   #!/bin/bash

   # Check if the IP address is routed through Tor
   tor_check=$(curl -s https://check.torproject.org/ | grep -q "Congratulations" && echo "Yes" || echo "No")

   # Output "Tor: Yes" or "Tor: No" based on the check result
   echo "Tor: $tor_check"
