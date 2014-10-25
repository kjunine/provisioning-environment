# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.box = "ubuntu/trusty64"

  config.vm.define "default"
  config.vm.hostname = "default"
  config.vm.network "private_network", type: "dhcp"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.roles_path = "roles"
    chef.environments_path = "environments"
    chef.data_bags_path = "data_bags"
    chef.add_role "default"
  end
end
