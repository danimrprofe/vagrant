# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/precise64"
  #config.vm.provision "shell", path:'php.sh'
  config.vm.provision = "ansible", run: "always" do |ansible|
    ansible.playbook = "instrucciones.yml"
end