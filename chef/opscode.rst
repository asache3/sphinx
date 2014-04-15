==============
Opscode Chef
==============

Construct Workstation
=======================

Install Chef Client
---------------------

::

  curl -L http://www.opscode.com/chef/install.sh | sudo bash


Make Chef Repository
----------------------

::

  git clone https://github.com/opscode/chef-repo.git

  cd chef-repo
  mkdir .chef 
  cp asache3-validator.pem asache3.pem knife.rb .chef/
  # Opscode Managementからダウンロードしたものをコピーする

  knife client list 


Make Configuration and Signiture for Chef Client
--------------------------------------------------

::

  knife configure client ./
  scp client.rb validation.pem [server_name]:~/
  # Chef Clientに設定とデジタル署名をコピーする


Construct Chef Node
=======================

::

  curl -L http://www.opscode.com/chef/install.sh | sudo bash

  mkdir /etc/chef
  cd /etc/chef
  cp client.rb validation.pem ./
  # Workstationからコピーしたものを置く

  chef-client (-N [node_name])


Make and Upload Cookbook
==========================

::

  knife cookbook create [cookbook_name] -o ./site-cookbooks
  vim ./site-cookbooks/[cookbook_name]/recipe/default.rb

  knife cookbook upload -a -o ./site-cookbooks


Download Cookbook
===================

::

  knife cookbook download [cookbook_name] -d ./cookbooks


Execute Chef
==============

On Workstation
----------------

::

  knife node run_list add [node_name] 'recipe[recipe_name]'
  knife node edit [node_name]
  # run_listにrecipeが追加されていることを確認する


On Node
----------------

::

  chef-client (-N [node_name])

  chef-client -d (-N [node_name])
  # デーモンとして実行する


Confirm node status
=====================

::

  knife status

  knife search node "fqdn:node*"
  knife search node "platform:centos"
  knife search node "platform:centos AND languates_ruby_version:1.8*"
