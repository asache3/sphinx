==================
Mathオブジェクト
==================

基本
======

絶対値
--------

::

  abs(num)
  document.writeln(Math.abs(-15));


大きい方の値
--------------

::

  max(num1, num2)
  document.writeln(Math.max(10, 15));


小さい方の値
--------------

::

  min(num1, num2)
  document.writeln(Math.min(-10, 0));


べき乗
--------

::

  pow(base, p)
  document.writeln(Math.pow(2, 3));


0〜1未満の乱数
----------------

::

  random()
  document.writeln(Math.random());


切り上げ/切り捨て
===================

小数点以下の切り上げ
----------------------

::

  ceil(num)
  document.writeln(Math.ceil(1.58));


小数点以下の切り捨て
----------------------

::

  floor(num)
  document.writeln(Math.floor(1.58));


四捨五入
----------

::

  round(num)
  document.writeln(Math.round(1.58));


平方根
========

::

  sqrt(num)
  document.writeln(Math.sqrt(3));


三角関数
==========

円周率
--------

::

  PI
  document.writeln(Math.PI);


コサイン
----------

::

  cos(num)
  document.writeln(Math.cos(1));


サイン
--------

::

  sin(num)
  document.writeln(Math.sin(1));


タンジェント
--------------

::

  tan(num)
  document.writeln(Math.tan(1));


アークコサイン
----------------

::

  acos(num)
  document.writeln(Math.acos(1));


アークサイン
--------------

::

  asin(num)
  document.writeln(Math.asin(1));


アークタンジェント
--------------------

::

  atan(num)
  document.writeln(Math.atan(1));


2変数のアークタンジェント
---------------------------

::

  atan2(y, x)
  document.writeln(Math.atan2(1, 1));


対数/指数関数
===============

自然対数の底
--------------

::

  E
  document.writeln(Math.E));


自然対数
----------

::

  log(num)
  document.writeln(Math.log(Math.E));


指数関数
----------

::

  exp(num)
  document.writeln(Math.exp(1));
