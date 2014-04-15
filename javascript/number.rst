====================
Numberオブジェクト
====================

rad進数の値に変換(radは2〜36)
===============================

::

  toString(rad)

  var num1 = 255;
  document.writeln(num1.toString(16));


指数形式に変換(decは小数点以下の桁数)
=======================================

::

  toExponential(dec)

  var num2 = 123.45678;
  document.writeln(num2.toExponential(2));


小数点第dec位え四捨五入
=========================

::

  toFixed(dec)

  document.writeln(num2.toFixed(3));


指定桁数に変換(桁数が不足する場合は0で補う)
=============================================

::

  toPrecision(dec)

  document.writeln(num2.toPrecision(10));

* toFixedメソッドは小数点以下の桁数を、toPrecisionメソッドは整数部も含めた全体桁数を指定する


----

* created 2014/02/10
