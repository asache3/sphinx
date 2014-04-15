=========
Install
=========

Install Rails
===============

::

  gem install rails
  gem install rails -v 3.2.14 # バージョンを指定する場合

  rails -v


Create new application
========================

::

  rails new first_app
  cd first_app

  vim Gemfile # gemを変更する場合
  bundle update
  bundle install

  rails server # Webサーバーを起動する

  /usr/local/rvm/gems/ruby-1.9.3-p392/gems/execjs-2.0.2/lib/execjs/runtimes.rb:51:in `autodetect': Could not find a JavaScript runtime. See https://github.com/sstephenson/execjs for a list of available runtimes. (ExecJS::RuntimeUnavailable)
  # ↑のようなエラーが出た場合

  yum install nodejs
