Vagrant.configure("2") do |config|
  config.vm.box = "perk/ubuntu-2204-arm64"  # Or your ARM64 box

  # Configure the QEMU provider
  config.vm.provider "qemu" do |qemu|
    qemu.memory = 2048
    qemu.cpus = 2

    # Bridged networking setup
    qemu.network_type = "bridge"
    qemu.bridge = "en0"  # Replace "en0" with your network interface (can use `ifconfig` to find it)

    # Optional: Assign a static IP to the guest
    qemu.network_ip = "10.1.1.100"  # Static IP for the VM
  end
end