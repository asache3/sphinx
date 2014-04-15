=========
Numeric
=========

Numericのクラス構成
=====================

* Numeric(数値)

  * Integer(整数)

    * Fixnum(普通の整数)
    * Bignum(大きな整数)

  * Float(浮動少数)
  * Rational(有理数)
  * Complex(複素数)


Rationalオブジェクト
----------------------

::

  require "rational" # Ruby 1.9では不要

  r = Rational(2, 5) + Rational(1, 3)

  p 1.5.to_r #=> (3/2)
  p Rational(1, 2).to_f #=> 1.5


Complexオブジェクト
---------------------

::

  require "complex" # Ruby 1.9では不要

  c = Complex(0, 2) ** 2

  p 1.5.to_c #=> (1.5+0i)


数値オブジェクトのリテラル
============================

.. csv-table::
  :header-rows: 1

  リテラル,意味
  0123,整数の8進表記(83)
  0o123,整数の8進表記(83)
  0d123,整数の10進表記(123)
  0x123,整数の16進表記(291)


Mathモジュール
================

::

  f = 2
  p Math.sqrt(f)

  include Math
  p sqrt(f)


乱数
======

* randメソッドは引数を与えない場合には1未満の浮動小数点数をランダムに返す
* 引数として正数値を与えた場合には0からその値より小さい範囲の正数値を返す

::

  p rand
  p rand(100)  
