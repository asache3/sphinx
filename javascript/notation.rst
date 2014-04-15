==============
基本的な記法
==============

<script>タグ
==============

::

  <script type="text/javascript">
  <!--
  JavaScriptのコード
  //-->
  </script>

* コード全体をコメント構文で囲んでいるのは、JavaScriptに対応していないブラウザでJavaScriptのコードがそのまま露出してしまうのを避けるため


JavaScript擬似プロトコル
==========================

::

  <a href="JavaScript:スクリプトコード">リンクテキスト</a>

  <a href="JavaScript:window.alert('Hello, World!');">Hello, World!'</a>


<noscript>タグ
================

* JavaScript機能がオフの場合に情報を表示させる

::

  <noscript>JavaScriptが利用できません。</noscript>


コメント
==========

* 一行で終わるコメントを記述する

::

  // comment

* 複数行にわたるコメントを記述する

::

  /* comment */


----

* updated 2014/02/14
