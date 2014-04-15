==========
Function
==========

関数を定義する
================

function命令で定義する
------------------------

* 関数の中身が一文であっても中カッコを省略することができない
* コードを解析/コンパイルするタイミングで関数を登録している

::

  function 関数名([引数1[, 引数2[,...]]) {
    関数内で実行される任意の命令(群)
    [return 戻り値;]
  }

  function triangle(base, height) {
    return base * height / 2;
  }

  document.writeln('三角形の面積:' + triangle(5, 2));


Functionコンストラクタ経由で定義する
--------------------------------------

* 関数が受け取る仮引数を順に並べ、最後に関数本体を指定する
* 引数や関数本体を文字列として定義できる
* 実行時(代入時)に評価される

::

  var 変数名 = new Function([引数1 [,引数[,...,]]]);

  var param = 'height, width';
  var formula = 'return height * width / 2;';
  var diamond = new Function(param, formula);

  document.writeln('菱形の面積:' + diamond(5, 2));


関数リテラル表現で定義する
----------------------------

* 名前のない関数を定義した上で、変数に格納する
* 宣言した時点では名前を持たないことから匿名関数、または無名関数と呼ばれる
* 実行時(代入時)に評価される

::

  var triangle = function(base, height) {
    return base * height / 2;
  };


スコープ
==========

* var命令を使わずに宣言された変数はすべてグローバル変数と見なす

  * ローカル変数を定義するには、必ずvar命令を使用する

* JavaScriptではブロックレベルのスコープが存在せず、ブロックを抜けた後も変数が有効であり続ける


引数情報を管理する(argumentsオブジェクト)
===========================================

* JavaScriptでは、与える引数の数が、関数側で要求する数と異なる場合もチェックしない

::

  function showMessage(value) {
    if(arguments.length != 1) {
      throw new Error('引数の数が間違っています:' + arguments.length);
    }
    document.writeln(value);
  }


再帰呼び出しを定義する(calleeプロパティ)
==========================================

* 現在実行中の関数自身を参照する

::

  function factorial(n) {
    if (n != 0) { return n * arguments.callee(n - 1); } 
    return 1:
  }


高階関数
==========

* 関数を引数、戻り値として扱う関数

::

  // 高階関数arrayWalkを定義
  function arrayWalk(data, f) {
    for (var key in data) {
      f(key, data[key]);
    }
  }

  var ary = [1, 2, 3, 8, 16];
  arrayWalk(
    ary,
    function (key, value) {
      document.writeln(key + ':' + value);
    }
  );


スコープチェーン
==================

* グローバル変数はグローバルオブジェクトのプロパティ、ローカル変数はActivation Object(通称、Callオブジェクトとも)のプロパティ
* スコープチェーンとは、グローバルオブジェクト、Callオブジェクトを生成の順に連結したリストのこと
* JavaScriptでは、スコープチェーンの先頭に位置するオブジェクトから順にプロパティを検索し、マッチするプロパティが初めて見つかったところで、値を採用している


クロージャ
============

* 一言で言うならば、「ローカル変数を参照している関数内関数」
* 処理をひとつしか持たないオブジェクト

  * 変数(群)に伴う処理をひとつしか必要としない → クロージャ
  * 複数の処理を必要とするケース → オブジェクト

::

  function closure(init) {
    var counter = init;

    return function() {
      return ++counter;
    }
  }

  var myClosure = closure(1);
  document.writeln(myClosuer());

* 匿名関数を表すCallオブジェクト、closure関数のCallオブジェクト、グローバルオブジェクトというスコープチェーンが、匿名関数が有効である間は保持される


