==========
Overview
==========

Install
=========

::

  yum install nodejs npm


特徴
======

* スレッドモデル

  * Apache
  * リクエストごとにスレッドを作る
  * 大量にアクセスが来ると、メモリが足りなくなってリクエストが待ち状態になる

* イベントループ

  * シングルスレッド
  * リクエストがくるとキューにためる
  * ループで順番に処理を行い、処理が終わったことを検出する
  * 処理を行う順番が分からない
  * ループをブロックしないようにプログラムを書く必要がある(ノンブロッキング)


Hello World!
==============

::

  node
  console.log("Hello World!");
  .exit

::

  vim hello.js

  console.log("Hello World!");

  node hello.js


Non Blocking
===============

* 時間がかかりそうな処理はコールバック関数で実装する

::

  setTimeout(function() {
      console.log("hello");
  }, 1000);
  console.log("world");


Blocking
----------

::

  var start = new Date().getTime();
  while (new Date().getTime() < start + 1000);
  console.log("world");


