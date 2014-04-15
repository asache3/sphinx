========
演算子
========

インクリメント/デクリメント演算子
===================================

::

  var x = 3;
  var y = x++; // 後置演算
  document.writeln(x); // 4
  document.writeln(y); // 3

  var x = 3;
  var y = ++x; // 前置演算
  document.writeln(x); // 4
  document.writeln(y); // 4


小数点を含む計算
==================

* 小数点を含む演算で厳密に結果を得る必要がある場合、あるいは、値の比較を行う場合

1. 値をいったん整数にしてから演算を行う
2. 1.の結果を再び小数点数に戻す


等価演算子(==)と同値演算子(===)
=================================

* 等価演算子では「オペランドのデータ型が異なる場合にもデータが型を変換して、『なんとか等しいと見なせないか』と試みる」

::

  document.write(1 == true); // true

* 同値演算子はデータ型を変換しないという点を除いては、等価演算子と同じ規則でオペランドを比較する

::

  document.writeln('1' === 1); // false


論理演算子
============

* 空文字列("")、数値の0、NAN(Not a Number)、null、undefinedなどの値 → false(偽)
* それ以外の値 → true(真)


delete演算子
==============

* オペランドに指定した変数や配列要素、オブジェクトのプロパティを破棄する

::

  var ary = ['JavaScript', 'Ajax', 'ASP.NET'];
  document.writeln(delete ary[0]); // true
  document.writeln(ary); //,Ajax,ASP.NET


typeof演算子
==============

* オペランドの指定した変数/リテラルのデータ型を表す文字列を返す

::

  var num = 1;
  document.writeln(typeof num);

