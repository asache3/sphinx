==========
例外処理
==========

try...catch...finally命令
===========================

::

  try {
    例外が発生するかもしれない命令（群）
  } catch(例外情報を受け取る変数) {
    例外が発生する時の命令（群）
  } [finally {
    例外の有無に関わらず、最終的に実行される命令（群）
  }]

  var i = 1;
  try {
    i = i * j;
  } catch(e) {
    document.writeln(e.message);
  } finally {
    document.writeln('処理が完了しました。');
  }

throw命令
===========

* 明示的に例外を発生させる

::

  throw new Error(エラーメッセージ)

  var x = 1;
  var y = 0;
  try {
    if(y == 0) { throw new Error('0で除算しようとしました。'); }
    var z = x / y;
  } catch(e) {
    document.writeln(e.message);
  }


----

* updated 2014/02/18
