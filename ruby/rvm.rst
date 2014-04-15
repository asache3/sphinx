=====
RVM
=====

* UNIX系の環境で複数のRuby処理系をインストールして、共存させることができるツール

Install RVM
=============

::

  curl -L https://get.rvm.io | bash -s stable


Update RVM
============

::

  rvm get stable
  rvm reload


Confirm RVM Version
=====================

::

  rvm -v


List remote Ruby version
==========================

::

  rvm list known


List local Ruby version
=========================

::

  rvm list


Install specified version
===========================

::

  rvm install 1.9.3-p448


Change to other version
=========================

::

  rvm use 1.9.3-p448


Change default version
========================

::

  rvm 1.9.3-p448 --default


Reference
===========

* `RVM: Ruby Version Manager <https://rvm.io>`__
