===============
Configuration
===============

Private Network(Host Only Access)
===================================

::

  config.vm.network :private_network, ip: "192.168.33.10"


Bridge Network
================

::

  config.vm.network :public_network


Synced Folder
==================

Vagrantfileがあるディレクトリの.vagrant以下は、VMと同期される。

追加でディレクトリを同期したい場合は、下記のように設定する。

::

  config.vm.synced_folder "./local_folder", "/vm_folder"


GUI Mode
==========

::

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
  end


Memory Size
=============

::

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end


Provisioning
==============

Chef Solo
-----------


Chef Server
-------------


Shell Script
--------------

::

  config.vm.provision :shell, :inline => <<-EOT
    yum update -y
    service iptables stop
    chkconfig iptables off
    yum -y install httpd
    chkconfig httpd on
    service httpd start
  end

  config.vm.provision :shell, :path => "script.sh"


Multiple VM
=============

::

  config.vm.define :web do |web|
    web.vm.hostname = "web"
    web.vm.network :private_network, ip:"192.168.33.11"
    web.vm.provision :shell, :inline => <<-EOT
      echo "Hello Web"
    EOT
  end

  config.vm.define :db do |db|
    db.vm.hostname = "db"
    db.vm.network :private_network, ip:"192.168.33.12"
    db.vm.provision :shell, :inline => <<-EOT
      echo "Hello DB"
    EOT
  end
