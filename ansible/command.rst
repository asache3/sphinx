=========
Command
=========

Module
========

service
---------

::

  ansible [host pattern] -m service -i [hosts file] -a [service] -k

  ansible all -m service -i hosts -a "name=httpd state=running" -k


ping
------

::

  ansible [host pattern] -m ping -i [hosts file] -k

  ansible all -m ping -i hosts -k
  

command
---------

::

  ansible [host pattern] -m command -i [hosts file] -a [command] -k

  ansible all -m command -i hosts -a "/sbin/reboot -t now" -k


setup
-------

* システム情報(facts)を確認する

::

  ansible [host pattern] -m setup -i [hosts file] -k

  ansible all -m setup -i hosts -k


Host
=======

::

  ansible [host pattern] -i [hosts file] --list-hosts

  # Host Name
  ansible client1 -i hosts --list-hosts

  # Group Name
  ansible webserver -i hosts --list-hosts
