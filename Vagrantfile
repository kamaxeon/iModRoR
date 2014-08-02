# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.


  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "wheezy64"
  config.vm.box_download_checksum_type = "md5"
  config.vm.box_url = " https://www.dropbox.com/sh/umoxzwf0w92wrk2/AACQc-OAzO8QbdZ3EDEB2Nx4a/vagrant-lxc-trusty-i386.box"
  config.vm.box_download_checksum = "dd90b7f9b9fb6bc80fdebe4d57dc3adc"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder "Code", "/home/vagrant/Code"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    vb.gui = false

    # Memory and CPUs settings
    vb.memory = 1024
    vb.cpus = 2
  end

  config.vm.provider "lxc" do |v, override|
    override.vm.box = "trustry-lxc-puppet-i386"
    override.vm.box_download_checksum_type = "md5"
    override.vm.box_url = "http://dl.dropbox.com/sh/umoxzwf0w92wrk2/AACQc-OAzO8QbdZ3EDEB2Nx4a/vagrant-lxc-trusty-i386.box"
    override.vm.box_download_checksum = "dd90b7f9b9fb6bc80fdebe4d57dc3adc"
  end


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'Provisioning/puppet/manifests'
    puppet.module_path    = 'Provisioning/puppet/modules'
  end


  config.vm.hostname = 'iModRor-dev'
end
