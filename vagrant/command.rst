=========
Command
=========


Add Box
==================

`Vagrantbox.es <http://www.vagrantbox.es>`__
から、使いたい仮想サーバーのイメージファイルを選択してVagrantに追加する。

::

  vagrant box add [box name] [path]

  ex)
  vagrant box add centos64_64 http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box

List installed boxes
======================

::

  vagrant box list


Delete Box
============

::

  vagrant box remove [box name]


Construct VM
==============

::

  vagrant init [box name]

  ex)
  vagrant init centos64_64


Start VM
==========

::

  vagrant up


Connect to VM
===============

::

  vagrant ssh


Confirm VM status
===================

::

  vagrant status


Suspend VM
============

::

  vagrant suspend


Stop VM
=========

::

  vagrant halt


Destroy VM
============

::

  vagrant destroy
