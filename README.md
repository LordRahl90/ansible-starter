## Ansible for Beginners


Using vagrant to setup target systems

Setting up the kubernetes platform

* `ansible-playbook ./kube-cluster/initial.yml`
* `ansible-playbook ./kube-cluster/dependencies.yml`
* `ansible-playbook ./kube-cluster/master-node.yml`
* `ansible-playbook ./kube-cluster/worker-nodes.yml`
* `ansible-playbook ./kube-cluster/fetch.yml` copies the kubeconfig to local folder