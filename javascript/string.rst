====================
Stringオブジェクト
====================

検索
======

文字列前方(start+1文字目)から部分文字列substrを検索
-----------------------------------------------------

::

  indexOf(substr [,start])

  var str1 = 'にわにはにわにわとりがいる';
  document.writeln('str1.indexOf('にわ'));
  document.writeln('str1.indexof('にわ', 3));


文字列後方(start+1文字目)から部分文字列substrを検索
-----------------------------------------------------

::

  lastIndexOf(substr, [,start])

  document.writeln(str1.lastIndexOf('にわ'));
  document.writeln(str1.lastIndexOf('にわ', 5));


部分文字列
============

n+1番目の文字を抽出
---------------------

::

  charAt(n)

  var str2 = 'Wingsプロジェクト';
  document.writeln(str2.charAt(4));


文字列からstart+1〜end文字目を抽出
------------------------------------

::

  slice(start [,end])
  substring(start [,end])

  document.writeln(str2.slice(5, 8));
  document.writeln(str2.substring(5, 8));


文字列のstart+1文字目からcnt文字を抽出
---------------------------------------

::

  substr(start [,cnt])

  document.writeln(str2.substr(5, 3));


文字列を分割文字列strで分割し、その結果を配列として取得(limitは最大分割数)
----------------------------------------------------------------------------

::

  split(str, [,limit])

  document.writeln(str2.split('s'));
  document.writeln(str1.split('わ', 3));


文字修飾
==========

文字列をアンカー化(<a name="name">を適用)
-------------------------------------------

::

  anchor(name)

  document.writeln('トップ'.anchor('top'));


文字列をリンク化(<a href="url">を適用)
----------------------------------------

::

  link(url)

  document.writeln(str2.link('http://www.wings.msn.to/'));


下付き文字にする(<sub>を適用)
-------------------------------

::

  sub()

  document.writeln('10'.sub());


上付き文字にする(<sup>を適用)
-------------------------------

::

  sup()

  document.writeln('10'.sup());


その他
========

文字列の後方にstrを連結
-------------------------

::

  concat(str)

  document.writeln(str2.concat('有限会社'));


文字列の長さを取得
--------------------

::

  length

  document.writeln(str2.length);


----

* created 2014/02/10
