==========================
コマンドラインオプション
==========================

文法チェック
==============

::

  ruby -c


デバッグモード
================

* デバッグ用の変数として$DEBUGを使うことができる

::

  ruby -d

  print some_var if $DEBUG

  # 実行すると最初にExceptionが出る
  Exception `LoadError' at /usr/local/rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/rubygems.rb:1087 - cannot load such file -- rubygems/defaults/operating_system
  Exception `LoadError' at /usr/local/rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/rubygems.rb:1096 - cannot load such file -- rubygems/defaults/ruby


ワンライナー
==============

::

  ruby -e 'command'


エンコーディングの指定
========================

::

  ruby -E [external_encoding:internal_encoding]

