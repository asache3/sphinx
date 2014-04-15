==========
Encoding
==========

2つのエンコーディング
=======================

* 外部エンコーディングは入出力の対象となるファイルやコンソールで期待するエンコーディング
* 内部エンコーディングはRubyスクリプトの中で扱うエンコーディング

.. csv-table::
  :header-rows: 1

  メソッド名,意味
  IO#external_encoding,IOの外部エンコーディングを返す
  IO#internal_encoding,IOの内部エンコーディングを返す
  IO#set_encoding,IOにエンコーディングを設定する

::

  $stdin.set_encoding("Shift_JIS:UTF-8")
  p $stdin.external_encoding
  p $stdin.internal_encoding


デフォルトのエンコーディング
==============================

::

  p Encoding.default_external
  p Encoding.default_internal


エンコーディングを指定してファイルを開く
==========================================

::

  File.open(file, "mode:encoding")
  File.open("foo.txt", "r:Shift_JIS:UTF-8")
