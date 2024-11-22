Vagrant.configure("2") do |config|
  config.vm.define "master" do |master| 
    config.vm.box = "sloopstash/ubuntu-22-04"
    master.vm.hostname = "master.example.com"
    master.vm.network "private_network", ip: "172.16.16.100"
    master.vm.provider "virtualbox" do |v|
      # v.vmx["ethernet0.pcislotnumber"] = "160"
      v.name = "master"
      v.memory = "4096"
      v.cpus = "2"
      # v.gui = true
    end
  end
end
