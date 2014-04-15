========
String
========

Stringは次の3種類の値を格納するために使われる

* バイトシーケンス値
* 整数値
* 浮動小数点値


値を設定する(SET)
===================

::

  SET key-name value-name
  SET hello world


格納された値を取得する(GET)
=============================

::

  GET key-name
  GET hello


格納された値を削除する(DEL)
=============================

::

  DEL key-name
  DEL hello


格納されている値に1を足す(INCR)
=================================

::

  INCR key-name
  INCR key


格納されている値に指定した整数を足す(INCRBY) 
================================================

::

  INCRBY key-name amount
  INCRBY key 15


格納されている値から1を引く(INCR)
=================================

::

  DECR key-name
  DECR key


格納されている値から指定した整数を引く(DECRBY) 
================================================

::

  DECRBY key-name amount
  DECRBY key 5


格納されている値に指定した浮動小数点数を足す(INCRBYFLOAT)
===========================================================

::

  INCRBYFLOAT key-name amount
  INCRBYFLOAT key 0.5


格納されている文字列に引数の値を連結する(APPEND)
==================================================

::

  APPEND key-name value
  APPEND new-string-key hello


startからendまでの部分文字列を返す(GETRANGE)
==============================================

::

  GETRANGE key-name start end
  GETRANGE new-string-key 3 5


指定したオフセットを先頭として部分文字列をセットする(SETRANGE)
================================================================

::

  SETRANGE key-name offset value
  SETRANGE new-string-key 0 H

