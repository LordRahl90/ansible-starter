## Ansible for Beginners


Using vagrant to setup target systems.

To Instsall kubernetes on the systems, run the playbook in the following order:
* initial.yml
* dependencies.yml
* master-node.yml
* worker-node.yml

NB: This should be after the `vagrant up` command has been executed to bring up the systens.

There could be a way to compile these playbooks into 1, but at this time, I don't have idea of any.