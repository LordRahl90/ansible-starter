ping:
	ansible all -i inventory -m ping

hosts:
	ansible all --list-hosts

facts:
	ansible all -m gather_facts

identity:
	vagrant ssh-config | grep IdentityFile

vd:
	vagrant destroy