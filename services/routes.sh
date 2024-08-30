#!/bin/bash

# Get the list of all network interface names
iface_list=$(ip -o link show | awk -F': ' '{print $2}')

# Iterate over each interface in the list
for iface in $iface_list; do
  # Get the state of the interface (UP or DOWN)
  state=$(ip link show $iface | grep "state" | awk '{print $9}')
  
  # Check if the interface is DOWN
  if [ "$state" = "DOWN" ]; then
    echo "Interface $iface is DOWN. Flushing IP addresses."
    # Flush the IP addresses of the interface
    sudo nmcli device down "$iface"
  else
    echo "Interface $iface is already UP."
  fi
done
