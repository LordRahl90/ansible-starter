## Ansible for Beginners


Using vagrant to setup target systems.

To Instsall kubernetes on the systems, run the playbook in the following order:
* initial.yml
* dependencies.yml
* master-node.yml
* worker-node.yml

NB: This should be after the `vagrant up` command has been executed to bring up the systens.

There could be a way to compile these playbooks into 1, but at this time, I don't have idea of any. <br />

These commands can be executed:
Using vagrant to setup target systems

Setting up the kubernetes platform

* `ansible-playbook ./kube-cluster/initial.yml`
* `ansible-playbook ./kube-cluster/dependencies.yml`
* `ansible-playbook ./kube-cluster/master-node.yml`
* `ansible-playbook ./kube-cluster/worker-nodes.yml`
* `ansible-playbook ./kube-cluster/fetch.yml` copies the kubeconfig to local folder
* `ansible-playbook ./kube-cluster/nfs-service.yml`


Helm NFS Provisioner
`helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner`

https://artifacthub.io/packages/helm/nfs-subdir-external-provisioner/nfs-subdir-external-provisioner
(
    ```
    helm install nfs nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=172.16.16.120 \
    --set nfs.path=/srv/nfs/kubedata \
    --set storageClass.defaultClass=true
    ```
)

To resolve DNS issues with kube-native https://discuss.kubernetes.io/t/dns-not-resolving-cluster-local/19144/3