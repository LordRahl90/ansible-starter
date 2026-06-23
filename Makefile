ping:
	ansible all -i inventory -m ping -vvv

hosts:
	ansible all --list-hosts

facts:
	ansible all -m gather_facts

docker:
	ansible all -m apt -a name=docker --become --ask-become-pass

identity:
	vagrant ssh-config | grep IdentityFile

vd:
	vagrant destroy -f
	rm -rf .vagrant

setup-kube:
	ansible-playbook ./kube-cluster/nfs-service.yml
	ansible-playbook ./kutbe-cluster/initial.yml
	ansible-playbook ./kube-cluster/dependencies.yml
	ansible-playbook ./kube-cluster/master-node.yml
	ansible-playbook ./kube-cluster/worker-nodes.yml
	ansible-playbook ./kube-cluster/fetch.yml
	ansible-playbook ./kube-cluster/nfs-service.yml

sk:setup-kube
