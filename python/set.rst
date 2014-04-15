=====
Set
=====

* 同じ要素を重複して持たないリストを作る
* リストとの違いは、同じ要素があると要素が追加されないこと
* setには順番という概念がない


set型のデータを作る
=====================

::

  s = set([1, 2, 3, 4])


set型のオブジェクトに要素を追加する
=====================================

::

  s.add(5)


set型のオブジェクトから要素を削除する
=======================================

::

  s.remove(2)
  s.discard(6) # 要素がなくてもKeyErrorを送出しない


set型の共通集合を返す
=======================

::
 
  s2 = set([2, 3, 'four', 'five'])
  s & s2
  s.intersection(s2)


set型の和集合を返す
=====================

::

  s.union(s2)


set型の差集合を返す
=====================

::

  s.difference(s2)


set型の排他的論理和を返す
===========================

::

  s ^ s2
  s.symmetric_difference(s2)


サブセット・スーパーセット
============================

* セットBのすべての要素がセットAに入っているか判別する

::

  colors = {"red", "blue", "green", "yellow", "purple", "orange"}
  subset = {"purple", "green"}
  subset.issubset(colors)
  colors.isupperset(subset)


ディスジョイントセット(素集合)
================================

* 1つも共通の要素がないセットのことをディスジョイント(素集合)という

::

  primary = {"red", "blue", "green"}
  art_primary = {"magenta", "cyan", "yellow"}
  primary.disjoint(art_primary)

