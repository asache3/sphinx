=======
knife
=======

knife-soloとは
================

* knifeのプラグインでChef Soloを利用するにあたって便利な機能をknifeに追加する


Install knife-solo
====================

::

  gem install knife-solo


* knife-solo 0.3.0を利用する場合

::

  vim ~/.chef/knife.rb

  --------
  knife[:solo_path] = 'tmp/chef-solo'
  --------


Create chef repository
========================

::

  knife solo init [repository]

  cd [repository]
  git init
  git add .
  git commit -m 'First commit'


Install chef-solo
===================

::

  knife solo prepare [hostname]
  or
  knife solo prepare [user]@[hostname]


Create cookbook
=================

* cookbooksにダウンロードしてきたクックブックを入れる
* site-cookbooksに自分の作ったクックブックを入れる

::

  knife cookbook create [cookbook_name] -o site-cookbooks


Edit recipe
=============

::

  vim site-cookbooks/[cookbook_name]/recipes/default.rb


Edit template
===============

::

  vim site-cookbooks/[cookbook_name]/templates/default/[file_name].erb


Edit JSON(Node Object)
========================

::

  vim nodes/[hostname].json

  --------
  {
    "nginx": {
      "port" : 80
  },
  "run_list":[
    "nginx"
  ]
}


Install community cookbook
============================

::

  vim ~/.chef/knife.rb

  --------
  client_key               '/Users/asache3/.chef/asache3.pem'
  cookbook_path            ['./cookbooks']
  --------
  
  knife cookbook site vendor [name]


Execute chef-solo
===================

::

  knife solo cook [hostname]


Specify run-list
==================

* >= 0.3.0

::

  knife solo cook [hostname] -o [run-list]
  ex.)
  knife solo cook melody -o hello::default, nginx::default


Clean recipes
===============

::

  knife solo clean [hostname]


