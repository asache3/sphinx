=============
Visual Mode
=============

* 最初に範囲選択をしてから、変更コマンドを呼び出す


ビジュアルモードの有効化
==========================

.. csv-table::
  :header-rows: 1

  結果,キーストローク
  文字指向のビジュアルモードを有効にする,v
  行指向のビジュアルモードを有効にする,V
  ブロック指向のビジュアルモードを有効にする,<Ctrl-v>
  直前のビジュアルな選択範囲を再度選択する,gv


単語を選択する
================

::

  viw


終点と始点を入れ替える
========================

::

  o


タグの内部をビジュアルに選択
==============================

::

  vit


選択されている文字を大文字に変換する
======================================

::

  U
  gU{motion} # オペレータ(gU)とモーション(it)



