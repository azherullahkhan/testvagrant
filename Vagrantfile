# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use the same key for each machine
  config.ssh.insert_key = false

  config.vm.define "vagrant1" do |vagrant1|
    vagrant1.vm.box = "ubuntu/trusty64"
    vagrant1.vm.network "private_network", ip: "192.168.50.4"
    #vagrant1.vm.network "private_network", type: "dhcp"
    vagrant1.vm.host_name = "serverone.example.com"
    vagrant1.vm.network "forwarded_port", guest: 80, host: 1080
    vagrant1.vm.network "forwarded_port", guest: 8080, host: 1181
    vagrant1.vm.provision :shell, path: "provision.sh"
  end
end