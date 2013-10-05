========
Plugin
========

Install Plugin
================

::

  vagrant plugin install [plugin name]


List installed plugin
=======================

::

  vagrant plugin list


Use sahara plugin
===================

Install sahara
----------------

::

  vagrant plugin install sahara
  or
  vagrant gem install sahara


Enable Sandbox mode
---------------------

::

  vagrant sandbox on


Disable Sandbox mode
----------------------

::

  vagrant sandbox off


Confirm Sandbox mode
----------------------

::

  vagrant sandbox status


Commit VM change
------------------

::

  vagrant sandbox commit


Restore VM
------------

::

  vagrant sandobox rollback

