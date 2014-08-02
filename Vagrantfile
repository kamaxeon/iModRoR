# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  config.vm.box = "wheezy64-amd64"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/86066173/debian-wheezy.box"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.synced_folder "Code", "/home/vagrant/Code"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = 1024
    vb.cpus = 2
  end

  config.vm.provider "lxc" do |v, override|
    override.vm.box = "trustry-lxc-puppet-amd64"
    override.vm.box_download_checksum_type = "md5"
    override.vm.box_url = "http://dl.dropbox.com/sh/umoxzwf0w92wrk2/AAAfylrPFF0WkC0GtShoZ_IHa/vagrant-lxc-trusty-amd64.box"
    override.vm.box_download_checksum = "5ea023ca50868c91c7eadd0c9cc7c441"
  end


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'Provisioning/puppet/manifests'
    puppet.module_path    = 'Provisioning/puppet/modules'
  end


  config.vm.hostname = 'iModRor-dev'
end
