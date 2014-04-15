=======
Model
=======

Modelとは
================

* データモデルで使用するデフォルトのデータ構造
* データベースとやりとりするデフォルトのRailsライブラリはActive Record

  * Active Recordは、データオブジェクトを作成/保存/検索するためのメソッドを持っている
  * メソッドを使用するのに、データベースで使うSQL(Structured Query Language)を意識する必要はない 


Modelを作る
============

 * コントローラー名には複数形を使い、モデル名には単数形を用いる

::

  rails generate model Foo bar:string baz:integer


Modelを戻す
============

::

  rails destory model Foo


属性をアクセス可能にする
==========================

* 明示的に指定された属性以外はすべてアクセスできない

::

  attr_accesible :name, :email


データベースをマイグレーションする
====================================

::

  bundle exec rake db:migrate


データベースを1つ前の状態に戻す
=================================

::

  bundle exec rake db:rollback


データベースを最初の状態に戻す
================================

::

  rake db:migrate VERSION=0


モデルに注釈を追加する
========================

::

  gem 'annotate', '2.5.0' # Gemfileに追加

  bundle install

  bundle exec annotate


Active Record
===============

オブジェクトを作成する
--------------------------------

::

  User.new


オブジェクトをデータベースに保存する
----------------------------------------------

::

  user = User.new(name: "Michael Hartl", email: "mhartl@example.com")
  user.save


モデルの生成と保存を同時に行う
--------------------------------

::

  foo = User.create(name: "Foo", email: "foo@bar.com")


オブジェクトを削除する
------------------------

::

  foo.destroy


オブジェクトを検索する
------------------------

::

  User.find(1)
  User.find_by_email("mhartl@example.com")
  User.first
  User.all


オブジェクトを更新する
------------------------

::

  user.email = "mhartl@example.net"
  user.save

  user.update_attributes(name: "The Dude", email: "dude@abides.org")
