=========================
イテレータ/ジェネレータ
=========================

イテレータ
============

* イテレータプロトコルの2つのメソッドを実装したコンテナオブジェクト

  * 次の要素を返す__next__メソッド
  * イテレータ自身を返す__iter__メソッド

::

  I = iter(組み込み型)

  i = iter([1, 2, 3])
  next(i)
  i.__next__()

  class CountDownIter(object):
      def __init__(self, num):
          self.num = num
      def __iter__(self):
          return self
      def next(self):
          self.num -= 1
          if self.num == 0:
            raise StopIteration
          return self.num


シーケンスとイテレータの違い
------------------------------

* シーケンスを使ったループでは、ループを始める前にシーケンスのすべての要素が揃っている必要がある
* イテレータを使った処理では、かならずしも要素がすべてそろっている必要はない


ジェネレータ
==============

* 一旦何らかの値を戻して、しばらく後にその時点から処理を再開することができる
* ジェネレータ関数はyield式を含み、ジェネレータオブジェクトの__next__()メソッドが呼び出される度にyield式までが実行され、yield式で指定された値を返す

  * yield文とreturn文を1つの関数で使うことはできない

* 無限に続く数列をリストで表現しようとすると、無限大のメモリサイズが必要になるが、ジェネレータを使えば1要素と要素を生成する式しか返さないのでメモリ効率が上がる

::

  def count_down_gen(num):
      while True:
          if num==0:
              raise StopIteration
          yield num
          num -= 1

  g1 = count_down_gen(5)
  g1.__next__()


.. csv-table::
  :header-rows: 1

  メソッド,説明
  send()メソッド,再開待ちのジェネレータに値を送出する
  throw()メソッド,再開待ちのジェネレータに例外を送出する
  close()メソッド,再開待ちのジェネレータにGeneratorExit例外を送出して、ジェネレータを正常終了する
