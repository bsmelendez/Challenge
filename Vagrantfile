# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure("2") do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

#Server01
  config.vm.define "server01" do |s1|
    s1.vm.box = "centos/7"
    s1.vm.hostname = "server01.example.com"
    s1.vm.network "private_network", ip: "172.42.42.10"
    s1.vm.provider "virtualbox" do |vb|
      vb.name = "server01"
      vb.memory = 2048
      vb.cpus = 1
    end
  end

#Server02
  config.vm.define "server02" do |s2|
    s2.vm.box = "centos/7"
    s2.vm.hostname = "server02.example.com"
    s2.vm.network "private_network", ip: "172.42.42.20"
    s2.vm.provider "virtualbox" do |vb|
      vb.name = "server02"
      vb.memory = 2048
      vb.cpus = 1
    end
  end

#Server03
  config.vm.define "server03" do |s3|
    s3.vm.box = "centos/7"
    s3.vm.hostname = "server03.example.com"
    s3.vm.network "private_network", ip: "172.42.42.30"
    s3.vm.provider "virtualbox" do |vb|
      vb.name = "server03"
      vb.memory = 2048
      vb.cpus = 1
    end
  end

#Server04
  config.vm.define "server04" do |s4|
    s4.vm.provision "shell", path: 'Install_Elastic.sh'
    s4.vm.box = "centos/7"
    s4.vm.hostname = "server04.example.com"
    s4.vm.network "private_network", ip: "172.42.42.40"
    s4.vm.provider "virtualbox" do |vb|
      vb.name = "server04"
      vb.memory = 2048
      vb.cpus = 1
    end
  end

end
