=======
Class
=======

クラスを定義する
==================

* クラス名は大文字で始める

::

  class クラス名
    クラスの定義
  end


initializeメソッド
====================

* newメソッドによってオブジェクトを生成すると、initializeメソッドが呼ばれる

::

  def initialize(myname="Ruby")
    @name = myname
  end


アクセスメソッドの定義
========================

.. csv-table::
  :header-rows: 1

  定義,意味
  attr_reader :name,参照のみ可能にする(nameメソッドを定義する)
  attr_writer :name,変更のみ可能にする(name=メソッドを定義する)
  attr_accessor :name,参照と変更の両方を可能にする(上記2つを定義する)


クラスメソッドを定義する
==========================

::

  def self.メソッド名
    ...
  end


メソッド呼び出しの制限
========================

.. csv-table::
  
  public,メソッドをインスタンスメソッドとして使えるように公開する
  private,メソッドをクラスの内部だけで使えるようにする(レシーバを指定して呼び出せないようにする)
  protected,メソッドをクラスの内部から使えるようにする。また、同一クラス内ではインスタンスメソッドとしても使えるようにする

* RubyのprotectedはJava、C++とは意味が違う

  * サブクラスのインスタンスが「オブジェクトの外から」メソッドを呼べるようになる

::

  class A
    def m
      puts "OK"
    end
    protected :m

    def call_m(a)
      a.m
    end
  end

  A.new.call_m(A.new)   # これは大丈夫
  A.new.m               # これはダメ


継承する
==========

::

  class クラス名 < スーパークラス名
    クラスの定義
  end


