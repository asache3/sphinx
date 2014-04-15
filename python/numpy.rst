=============
Numpy/Scipy
=============

Numpy
=======

* 配列や行列の演算を高速に行うために利用されるライブラリ
* numpyの配列や行列などは単一の型のみを持つ

  * データをC言語の配列として持つことで高速化を計っている

* 数値であればそのまま関数を適用して返し、数列であれば要素すべてに関数を適用して返す

::

  import numpy

  ar = numpy.array([[1, 2, 3],
                    [11, 12, ,13]],
                    numpy.int32)

  # 配列の型を表示
  ar.dtype

  # 配列の要素それぞれに適用
  x = numpy.linspace(0, numpy.pi, 9)
  numpy.sin(x)


配列生成関数
--------------

.. list-table::
  :header-rows: 1

  * - シグネチャ
    - 意味
  * - numpy.arange(start[, end[, step]])
    - numpy.arrayを返すrange
  * - numpy.identity(n)
    - n次の単位行列を生成する
  * - numpy.ones(n)
    - 1で埋められたarrayを生成する
  * - numpy.zeros(n)
    - 0で埋められたarrayを生成する
  * - numpy.linspace(start, end, num)
    - startからendまでnum個に分割した数列を返す


演算用関数
------------
 
.. list-table::
  :header-rows: 1

  * - シグネチャ
    - 意味
  * - numpy.add(a, v)
    - 第一引数で渡したarrayに第二引数を足す
  * - numpy.multiply(a, v)
    - 第一引数で渡したarrayに第二引数を掛ける
  * - numpy.dot(a, v)
    - 第一引数と第二引数の内積を計算する
  * - numpy.cross(a, v)
    - 第一引数と第二引数の外積を計算する


Scipy
=======

* 高次元の科学技術計算を可能にするライブラリ

積分
------

::

  from scipy import integrate

  def ret1(x):
    return 1

  result, error = integrate.quad(ret1, 0, 10)


Weave
-------

* Pythonコード中にC++のソースコードを埋め込み、実行時にコンパイルして実行する
