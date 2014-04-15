==========
scaffold
==========

scaffoldを作成する
====================

::

  rails generate scaffold User name:string email:string


データベースをマイグレートする
================================

* Gemfileに対応するバージョンのRakeが確実に実行されるようにするため、rakeを実行するときにbundle execを使用する

::

  bundle exec rake db:migrate


Webサーバーを起動する
=======================

::

  rails server
  rails server -p [port] -b [IP address] -d


resourcesで割り当てられるRESTfulなルーティング
================================================

.. csv-table::
  :header-rows: 1

  HTTP request, URI, アクション, 用途
  GET, /users, index, すべてのユーザーを表示するページ
  GET, /users/1, show, id=1のユーザーを表示するページ
  GET, /users/new, new, ユーザーを新規作成するページ
  POST, /users, create, ユーザーを新規作成するアクション
  GET, /users/1/edit, edit, id=1のユーザーを編集するページ
  PUT, /users/1, update, id=1のユーザーを更新するアクション
  DELETE, /users/1, destroy, id=1のユーザーを削除するアクション


最大文字数を制限する
======================

::

  class Micropost < ActiveRecord::Base
    attr_accessible :content, :user_id
    validates :content, :length => { :maximum => 140 }
  end


異なるデータモデル同士を関連付ける
====================================

::

  class User < ActiveRecord::Base
    attr_accessible :email, :name
    has_many :microposts
  end

  class Micropost < ActiveRecord::Base
    attr_accessible :content, :user_id

    belongs_to :user

    validates :content, :length => { :maximum => 140 }
  end


Railsのconsoleを使う
======================

::

  rails console
