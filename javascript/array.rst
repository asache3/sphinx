===================
Arrayオブジェクト
===================

加工
======

指定配列を現在の配列に連結
----------------------------

::

  concat(ary)
  document.writeln(ary1.concat(ary2));


配列内の要素を区切り文字で連結
--------------------------------

::

  join(del)
  document.writeln(ary1.join('／');


start〜end-1番目の要素の抜き出し
----------------------------------

::

  slice(start [,end])
  document.writeln(ary1.slice(1));
  document.writeln(ary1.slice(1, 2));


配列内のstart+1〜start+cnt+1番目の要素をrep,...で置き換え
-----------------------------------------------------------

::

  splice(start, cnt [,rep [,...]])
  document.writeln(ary1.splice(1, 2, 'Kakeya', 'Yamaguchi'));


追加/削除
===========

配列の末尾の要素を取得し、削除
--------------------------------

::

  pop()
  document.writeln(ary1.pop());


配列末尾に要素を追加
----------------------

::

  push(data)
  document.writeln(ary1.push('Kondo'));


配列先頭の要素を取得し、削除
------------------------------

::

  shift()
  document.writeln(ary1.shift());


配列先頭に指定要素を追加
--------------------------

::

  unshift(data1 [,data2,...])
  document.writeln(ary1.unshift('Ozawa', 'Kuge'));


並べ替え
==========

逆順に並び変え(反転)
----------------------

::

  reverse()
  document.writeln(ary1.reverse());


要素を昇順に並び変え
----------------------

::

  sort([fnc])
  document.writeln(ary1.sort());


その他
========

配列のサイズ
--------------

::

  length
  document.writeln(ary1.length);


配列の中身を確認する「要素, 要素,...の形式で文字列に変換」
-----------------------------------------------------------

::

  toString()
  document.writeln(ary1.toString());
