====================
Globalオブジェクト
====================

* グローバルオブジェクトとは、グローバル変数やグローバル関数を管理するために、JavaScriptが自動的に生成する「便宜的な」オブジェクト

::

  変数名
  関数名(引数, ...)


数値へ明示的に変換する(parseFloat/parseInt/Number関数)
========================================================

* Number(val) → 数値型に変換
* parseFloat(val) → 文字列を浮動小数点に変換
* parseInt(val) → 文字列を整数値に変換

::

  var n = '123xxx';
  document.writeln(Number(n));
  document.writeln(parseFloat(n));
  document.writeln(parseInt(n));


動的に生成したスクリプトを実行する(eval関数)
==============================================

* eval関数は、与えられた文字列をJavaScriptのコードとして評価/実行する

  * 第3者によるに任意のスクリプトが自由に実行できてしまう可能性がある(セキュリティリスク)
  * 通常のコードを実行するよりも、処理速度が遅い(パフォーマンスの劣化)

::

  var str = 'window.alert("eval関数");
  eval(str);


----

* created 2014/02/14
