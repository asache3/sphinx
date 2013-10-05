==========
Resource
==========

* レシピ内で使う、サーバーの状態に影響を与える命令

Log
=====

* Chefのログを操作する

::

  log "Hello, Chef!"


Package
=========

* パッケージの状態を記述する
* プラットフォームに合わせてパッケージシステムを選択してくれる

::

  package "perl" do
    action :install
    version "5.10.1"
  end

* 複数のパッケージをまとめて入れる

::

  %w{gcc make nginx mysql}.each do |pkg|
    package pkg do
      action :install
    end
  end

* 既存のパッケージが古い場合は最新版に入れ替える

::

  package "perl" do
    action :upgrade
  end

* パッケージを削除する

::

  package "perl" do
    action :remove
  end


gem_package
-------------

* rubygemsのgemパッケージの状態を記述する

::

  gem_package "rake" do
    action :install
  end


Service
=========

* サービスを操作する

::

  service "td-agent" do
    action [ :enable, :start ] # サービスを有効にして起動させる
    supports :status => true, :restart => true, :reload => true # 他のResourceなどに使えることを教える
    subscribes :restart, :template[td-agent.conf]" # td-agent.confが更新されたらサービスをrestartする(Notificationと逆方向の通知)
  end


Template
==========

* テンプレートが展開されて設定ファイルが配置される

::

  template "nginx.conf" do
    path "/etc/nginx/nginx.conf"
    source "nginx.conf.erb"
    owner "root"
    group "root"
    mode 0644
    notifies :reload, 'service[nginx]' # nginx.confが更新された場合にnginxサービスをreloadする(Subscribeと逆方向の通知)
  end


Group
=======

* グループを作る

::

  group 'xenoblade' do
    gid 999
    members ['fiorung', 'dunban']
    action :create
  end

* 既存のグループにユーザーを追加する

::

  group 'xenoblade' do
    action :modify
    members ['shulk']
    append true
  end


User
======

* ユーザを作る

::

  user 'td-agent' do
    comment  'td-agent'
    uid      403
    group    'td-agent'
    home     '/var/run/td-agent'
    shell    '/bin/false'
    password nil
    supports :manage_home => true # ユーザーを新規作成したときにホームディレクトリを作る
    action   [:create, :manage]
  end

Cookbook File
===============

::

  cookbook_file "/tmp/supervisor-3.0a12-2.el6.noarch.rpm" do
    mode 00644
  end
  # files/default/supervisor-3.0a12-2.el6.noarch.rpmというファイルが/tmp以下に転送される


Directory
===========

* ディレクトリを作る

::

  directory '/etc/td-agent/' do
    owner  'td-agent'
    group  'td-agent'
    mode   '0755'
    action :create # 削除する場合は:delete
  end


Reference
===========

* http://docs.opscode.com/resource.html
