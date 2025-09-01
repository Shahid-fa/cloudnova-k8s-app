#!/bin/bash
# Run this on worker nodes to join the cluster
# Replace <join-command> with the actual command from master node output

echo "Run the kubeadm join command provided by the master node here."
echo "Example:"
echo "sudo kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash>"