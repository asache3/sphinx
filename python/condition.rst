==========
条件分岐
==========

if文
======

::

  year = 1900

  if year == 1868:
    print("明治元年")
  elif year == 1912:
    print("大正元年")
  else:
    print("明治" + str(year-1867) +  "年")


比較演算子
============

* 異なる組み込み型同士で比較を行うと、Pythonでは「異なる」という答えが返ってくる

::

  numone = 1
  strone = "1"

  numone == strone # False
  str(numone) == strone # True
  numone == int(strone) # True

