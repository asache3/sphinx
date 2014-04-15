=========
Install
=========

Install Chef Client
=====================

::

  curl -L http://www.opscode.com/chef/install.sh | sudo bash
  or
  gem install chef


Install Chef Server
=====================

* http://www.opscode.com/chef/install/ からパッケージをダウンロードする

::

  sudo rpm -Uvh chef-server-11.0.6-1.el6.x86_64.rpm
  sudo chef-server-ctl reconfigure
