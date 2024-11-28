Vagrant.configure("2") do |config|
  # config.vm.box = "perk/ubuntu-2204-arm64"  # Or your ARM64 box
  # config.vm.box = "bento/ubuntu-22.04"

  config.vm.box = "generic/ubuntu2004"
  config.vm.box_version = "4.3.12"

  config.vm.network "private_network", ip: "192.168.56.101"
  

  # Configure the QEMU provider
  # config.vm.provider "qemu" do |qemu|
  config.vm.provider "virtualbox" do |qemu|
    qemu.memory = 2048
    qemu.cpus = 2
  

    # Bridged networking setup
    # qemu.network_type = "bridge"
    # qemu.bridge = "en0"  # Replace "en0" with your network interface (can use `ifconfig` to find it)

    # # Optional: Assign a static IP to the guest
    # qemu.network_ip = "10.1.1.100"  # Static IP for the VM
  end
end