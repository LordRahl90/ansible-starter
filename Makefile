ping:
	ansible all -i inventory -m ping

hosts:
	ansible all --list-hosts

facts:
	ansible all -m gather_facts

docker:
	ansible all -m apt -a name=docker --become --ask-become-pass

identity:
	vagrant ssh-config | grep IdentityFile

vd:
	vagrant destroy