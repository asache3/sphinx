==========
条件判断
==========

真偽値
========

* falseとnilだけが「偽」として扱われ、それ以外はすべて「真」として扱われる


if文
======

* if式のthenは省略する

::

  if 条件1 
    文1
  elsif 条件2
    文2
  else
    文3
  end

  print "aはbよりも大きい" if a > b


unless文
==========

* if !xのような場合は、unless xに置き換える
* unlessの場合、elseは使用しない

::

  unless 条件
    文1
  end

  print "stop\n" unless valid(passwd)


case文
========

* 比較したいオブジェクトが1つだけで、その値によって場合分けをしたい場合
* thenは省略する

::

  case 比較したいオブジェクト
  when 値1
    文1
  when 値2
    文2
  else
    文3
  end

