====================
Objectオブジェクト
====================

* Objectオブジェクトは他のオブジェクトに対して、オブジェクトの共通的な性質(プロパティ)/機能(メソッド)を提供する

オブジェクトを基本型に変換(toString/valueOfメソッド)
======================================================

* toStringメソッド → 文字列を返す
* valueOfメソッド → 文字列以外の値が返されることを「期待して」使われる

::

  var obj = new Object();
  document.writeln(obj.toString());
  document.writeln(obj.valueOf();

  var dat = new Date();
  document.writeln(dat.toString());
  document.writeln(dat.tvalueOf());


インスタンスのオブジェクト型を判定する(constructorプロパティ)
===============================================================

* typeof演算子は基本型を識別することしかできない
* 参照型(オブジェクト型)の変数を識別するにはconstructorプロパティを使用する

  * constructorプロパティと同じ機能を持つ演算子としてinstanceof演算子もある

::

  var data = [];
  if(typeof data == 'object' && data.constructor == Array) {
    document.writeln('変数dataはArrayオブジェクトのインスタンスです。');
  }

  if(typeof data == 'object' && data instanceof Array) {

  }


匿名オブジェクトを作成する
============================

* 「オブジェクトリテラルでオブジェクトを生成する」とは、「匿名オブジェクトを定義する」ことと同じ意味

::

  var obj = new Object();
  obj.name = 'トクジロウ';
  obj.birth = new Date(2005, 7, 15);
  obj.old = 5;

  var obj = {name: 'トクジロウ', birth: new Date(2005, 7, 15), old:3};


----

* created 2014/02/14
