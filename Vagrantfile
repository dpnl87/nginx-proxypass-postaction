# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'chef/centos-6.5'

  config.vm.define 'box1' do |b1|
    b1.vm.network 'private_network', ip: '192.168.33.10'

    b1.vm.provider 'virtualbox' do |v|
      v.memory = 1024
      v.cpus = 1
    end

    conf = 'cp /vagrant/proxy.conf /etc/nginx/conf.d; service nginx restart'

    b1.vm.provision 'shell', path: 'setup.sh'
    b1.vm.provision 'shell', inline: conf
  end

  config.vm.define 'box2' do |b2|
    b2.vm.network 'private_network', ip: '192.168.33.20'

    b2.vm.provider 'virtualbox' do |v|
      v.memory = 1024
      v.cpus = 1
    end

    b2.vm.provision 'shell', path: 'setup.sh'
  end
end
