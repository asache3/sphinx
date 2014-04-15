========
Heroku
========

Herokuの登録とインストール
============================

* `Herokuのユーザー登録 <http://api.heroku.com/signup>`__
* `Heroku Toolbelt <https://toolbelt.heroku.com/>`__ を使ってソフトウェアをインストール

::

  # CentOSの場合
  wget --no-check-certificate -qO- https://toolbelt.heroku.com/install.sh | sh


Herokuにデプロイ
=================

::

  heroku login

  cd ~/rails_projects/first_app
  heroku create

* ProductionではPostgreSQLを使うように設定を変更する

::

  # config/database.yml
  group :development do
    gem 'sqlite3', '1.3.5'
  end

  group :production do
    gem 'pg', '0.12.2'
  end


* プリコンパイル時にはアプリケーションのロードを部分的に行うように設定を変更する

::

  # config/application.rb
  config.assets.initialize_on_precompile = false 


* Herokuにデプロイする

::

  git push heroku master

* "Permission denied (publickey)."と出た場合

::

  ssh-keygen -t rsa
  Generating public/private rsa key pair.
  Enter file in which to save the key (/Users/user/.ssh/id_rsa): /Users/user/.ssh/heroku_rsa

  heroku keys:add ~/.ssh/heroku_rsa.pub

  vim ~/.ssh/config
  Host heroku.com
  User git
  port 22
  Hostname heroku.com
  IdentityFile ~/.ssh/heroku_rsa
  TCPKeepAlive yes
  IdentitiesOnly yes
