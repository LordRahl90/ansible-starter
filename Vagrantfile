Vagrant.configure("2") do |config|

  config.ssh.insert_key = true

  config.vm.define "master" do |master|
    master.vm.box = "net9/ubuntu-24.04-arm64"
    master.vm.hostname = "lmaster.example.com"
    master.vm.network "private_network", ip: "172.16.16.100"
    master.vm.provider "virtualbox" do |v|
      v.name = "master"
      v.memory = "4096"
      v.cpus = "2"
    end
  end

  NodeCount = 3

  (1..NodeCount).each do |i|
    config.vm.define "worker#{i}" do |node|
      node.vm.box = "net9/ubuntu-24.04-arm64"
      node.vm.hostname = "worker#{i}.example.com"
      node.vm.network "private_network", ip: "172.16.16.10#{i}"
      node.vm.provider "virtualbox" do |v|
        v.name = "worker#{i}"
        v.memory = "2024"
        v.cpus = "1"
      end
    end
  end  

  config.vm.define "nfs1" do |nfs1|
    config.vm.box = "net9/ubuntu-24.04-arm64"
    nfs1.vm.hostname = "nfs.example.com"
    nfs1.vm.network "private_network", ip: "172.16.16.120"
    nfs1.vm.provider "virtualbox" do |v|
      v.name = "nfs"
      v.memory = "4096"
      v.cpus = "2"
    end
  end

end