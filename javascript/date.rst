==================
Dateオブジェクト
==================

ローカル(取得)
================

年(4桁)
---------

::

  getFullYear()  
  var dat = new Date(2014, 2, 13, 8, 16,  30, 999);
  document.writeln(dat.getFullYear());


月(0〜11)
-----------

::

  getMonth()
  document.writeln(dat.getMonth());


日(1〜31)
-----------

::

  getDate()
  document.writeln(dat.getDate());


曜日(0:日曜〜6:土曜)
----------------------

::

  getDay()
  document.writeln(dat.getDay());


時(0〜23)
-----------

::

  getHours()
  document.writeln(dat.getHours());


分(0〜59)
-----------

::

  getSeconds()
  document.writeln(dat.getMinutes());


秒(0〜59)
-----------

::

  getSeconds()
  document.writeln(dat.Seconds());


ミリ秒(0〜999)
----------------

::

  getMilliseconds()
  document.writeln(dat.getMilliseconds());


協定世界時との時差
--------------------

::

  getTimezoeOffset()
  document.writeln(dat.getTimezoneOffset());


ローカル(設定)
================

年(4桁)
---------

::

  setFullYear(y)
  var dat2 = new Date();
  dat2.setFullYear(2011);


月(0〜11)
-----------

::

  setMonth(m)
  dat2.setMonth(7);


日(1〜31)
-----------

::

  setDate(d)
  dat2.setDate(5);


時(0〜23)
-----------

::

  setHours(h)
  dat2.setHours(11);


分(0〜59)
----------

::

  setMinutes(m)
  dat2.setMinutes(37);


秒(0〜59)
-----------

::

  setSeconds(s)
  dat2.setSeconds(15);


ミリ秒(0〜999)
----------------

::

  setMilliseconds(ms)
  dat2.setMilliseconds(513);


1970/01/01 00:00:00からの経過ミリ秒
-------------------------------------

::

  setTime(ts)
  dat2.setTime(10000);


文字列変換
============

日付部分を文字列として取得
----------------------------

::

  toDateString()
  document.writeln(dat2.toDateString());


時刻部分を文字列として取得
----------------------------

::

  toTimeString()
  document.writeln(dat2.toTimeString());


日時を文字列として取得
------------------------

::

  toString()
  document.writeln(dat2.toString());


解析
======

日付文字列を解析し、1970/01/01 00:00:00からの経過ミリ秒を取得
---------------------------------------------------------------

::

  parse(dat)
  document.writeln(Date.parse( '2008/08/05' ));



日付情報をもとに1970/01/01 00:00:00からの経過ミリ秒を取得(協定時)
-------------------------------------------------------------------

::

  UTC(y, m, d [,h [,mm [,s [,ms]]]])
  document.writeln(Date.UTC(2008, 8, 5);


日付/時刻データを加算/減算する
================================

1. getXxxxメソッドで現在の日付/時刻要素を取得しておく
2. 取得した値に加算/減算を行う
3. さらにsetXxxxメソッドで設定しなおす

::

  var dat = new Date(2010, 4, 15, 11, 40)
  dat.setMonth(dat.getMonth() + 1);
  dat.setDate(0);

* 「来月の0日目」はDateオブジェクトでは今月の最終日


日付/時刻の差分を求める
=========================

* 経過ミリ秒の差を求め、その値をもう一度、日付に変換する

::

  var dat1 = new Date(2010, 4, 15);
  var dat2 = new Date(2010, 5, 20);
  var diff = (dat2.getTime() - dat1.getTime()) / (1000 * 60 * 60 * 24);

