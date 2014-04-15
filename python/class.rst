=======
Class
=======

オブジェクト
==============

* Pythonではすべてがオブジェクト
* オブジェクトとは、データ(アトリビュート)と命令(メソッド)をまとめたもの
* CPythonではオブジェクトIDは情報が格納されているメモリの場所

::

  s = 'spam'
  id(s)


クラスを作る
==============

* クラスは、プログラムで利用するオブジェクトの設計図
* メソッドには、第1引数としてインスタンス(self)を指定する

::

  class MyClass:
    def __init__(self):
      self.value = 0
      print("This is __init__() method !")


インスタンスを作る
====================

::

  i = MyClass()


カプセル化
============

* アトリビュート名やメソッド名の先頭にアンダースコア(_)を1つ付ける

  * Pythonが制限してくれるわけではなく、クラスの機能を使う人が外部から書き換えてはいけないのだということを知る

* アトリビュート名やメソッド名の先頭にアンダースコア(_)を2つ付ける(プライベートメンバ)

  * Pythonが名前をクラス内部で他のものに置き換える
  * 名前の置き換えルールを知っていれば、アクセスできる


クラスを継承する
==================

::

  class クラス(スーパークラス名1[, スーパークラス名2, ...])

  class Cube(Prism):
    def __init__(self, length):
      super().__init__(length, length, length)


メソッドの検索順序を取得する
------------------------------

* mro(Method resolution order)

::

  D.mro()



スロット
==========

* アトリビュートの追加を制限する
* Pythonではデフォルトではオブジェクトのアトリビュートはdictを使って保存している
* 少数の固定な属性を持つ小さなクラスを扱うときは__slots__を使ってメモリを節約する

::

  __slots__ = [追加を許可するアトリビュート]

  __slots__ = ['a', 'b']


プロパティ
============

* セッターとゲッターを手軽に定義するための機能

::

  class Spam:
    def __init__(self):
      self.__ham = 0

    @property # getterを定義
    def ham(self):
      return self.__ham

    @ham.setter # setterを定義
    def ham(self, value):
      self_ham = value

    @ham.deleter # deleterを定義
    def ham(self):
      del self.__ham


クラスメソッド
================

* デコレータclassmethodを使って定義する
* 第一引数としてクラスを取得する

::

  class Spam:
    @classmethod
    def clsmethod(cls):
      print(cls)

  Spam.clsmethod()


スタティックメソッド
======================

* デコレータstaticメソッドで定義し、第一引数を追加しない

::

  class Spam:
    @staticmethod
    def static_method(ham, egg):
      print(ham, egg)

  Spam.static_method(ham=100, egg=200)


特殊メソッド
==============

* アンダースコアが2つ付いたメソッド
* 演算子を使った演算や、角括弧を使った要素の参照などを実際に行っている
* 組み込み型を継承したクラスで特殊メソッドをオーバーライドすると、演算子などを使った場合の処理の内容を変更することができる


アトリビュート名の一覧を取り出す
==================================

::

  dir(i)


オブジェクトがどの型に属しているのかを調べる
==============================================

::

  type(オブジェクト)
  isinstance(オブジェクト, 型)

  type(i)
  isinstance(i, MyClass)

