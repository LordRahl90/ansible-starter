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
https://artifacthub.io/packages/helm/nfs-subdir-external-provisioner/nfs-subdir-external-provisioner