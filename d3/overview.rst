==========
Overview
==========

D3.jsの特徴
=============

* Data Driven Document
* Protovisと呼ばれた初期の可視化ツールキットの後継として、Mike Bostockによって作成されたJavaScriptライブラリ
* ブラウザに含まれる既存技術が活用できる

  * 要素の選択がCSSのセレクタを使って行われる
  * 要素のスタイル設定が通常のCSSを使って行われること

* 処理の流れ

  * 要素を指定する

    * select, selectAll

  * 取得や設定をする

    * text, attr, style, append, remove

::

  d3.select("body").selectAll("p").text("hello from d3!");


基本的なページ設定
====================

::

  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <script src="d3.v3.js"></script> // D3ライブラリをインクルードする
    <script>
    function draw(data) {
      "use strict";
      // 可視化コードを書く
    }
    </script>
  </head>
  <body>
    <script>
      d3.json("data/some_data.json", draw); // JSONファイルをHTTP GETで要求し、そのデータがダウ>ンロードされたら、第2引数として渡された関数を呼び出す
    </script>
  </body>
  </html>


Reference
===========

* `公式サイト <http://d3js.org>`__
