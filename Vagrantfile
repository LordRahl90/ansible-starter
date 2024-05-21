Vagrant.configure("2") do |config|

  config.ssh.insert_key = true
  
  config.vm.define "master" do |master| 
    config.vm.box = "sloopstash/ubuntu-22-04"
    master.vm.hostname = "master.example.com"
    master.vm.network "private_network", ip: "172.16.16.100"
    master.vm.provider "vmware_fusion" do |v|
      v.memory = "4096"
      v.cpus = "2"
      v.gui = true
    end
  end

  NodeCount = 3

  (1..NodeCount).each do |i|
    config.vm.define "worker#{i}" do |node|
      node.vm.box = "sloopstash/ubuntu-22-04"
      node.vm.hostname = "worker#{i}.example.com"
      node.vm.network "private_network", ip: "172.16.16.10#{i}"
      node.vm.provider "vmware_fusion" do |v|
        v.memory = "2024"
        v.cpus = "1"
        v.gui = true
      end
    end
  end  

  config.vm.define "nfs1" do |nfs1|
    config.vm.box = "sloopstash/ubuntu-22-04"
    nfs1.vm.hostname = "nfs.example.com"
    nfs1.vm.network "private_network", ip: "172.16.16.105"
    nfs1.vm.provider "vmware_fusion" do |v|
      v.memory = "4096"
      v.cpus = "2"
      v.gui = true
    end
  end

end
