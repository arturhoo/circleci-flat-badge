# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network 'private_network', ip: '172.20.20.81'
  config.vm.hostname = 'circleci-flat-badge'

  # config.vm.network 'forwarded_port', guest: 80, host: 8080
  # config.vm.network 'public_network'
  # config.vm.synced_folder '../data', '/vagrant_data'

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'provisioning/playbook.yml'
  end
end
