==========
内包表記
==========

リスト内包表記
================

::

  sq = [x ** 2 for x in range(10)]

  return [item for item in data if data.count(item) > 1]

  l = [x+y for x in (1, 2, 3) for y in (100, 200, 300)]


ディクショナリ内包表記
========================

::

  revtz = {value:name for name, value in tz.items()}


set内包表記
=============

::

  unames = {x.title() for x in names}


ジェネレータ式
================

::

  g = (x**2 for x in range(10) if x%2 == 0)
  g.__next__()
