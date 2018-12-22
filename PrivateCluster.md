# Google Kubernetes Engine Private Cluster

**Overview**

In a private cluster, the nodes have internal IP addresses only. Masters run on VMs in Google-owned projects. Traffic between nodes and the master is routed entirely using internal IP addresses.

Your VPC network contains the cluster nodes, a separate VPC network in a Google-owned project contains the master. The two VPC networks are connected using VPC Network Peering.

![Screenshot](PrivateCluster.png)

**Access using kubectl**

**From public IP addresses:**  Never

**From nodes:**  Always uses the private endpoint. kubectl must be [configured to use the private endpoint](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for-kubectl#internal_ip).

**From other VMs in the cluster&#39;s VPC network:**  Other VMs can use kubectl to communicate with the private endpoint only if they are in the same region as the cluster and their internal IP addresses are included in the list of master authorized networks.