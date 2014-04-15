==========
条件分岐
==========

if命令
========

::

  if (条件式1) {
    条件式1がtrueの場合に実行する命令
  } [else if (条件式2) {
    条件式2がtrueの場合に実行する命令
  } [else {
    すべての条件式がfalseの場合に実行する命令
  }]]

  var x = 10;
  if (x >= 10) {
    document.writeln('変数xは10以上です。');
  } else if (x >= 5) {
    document.writeln('変数xは5以上10未満です。');
  } else {
    document.writeln('変数xは5未満です。');
  }

* 中カッコを省略した場合、elseブロックは直近のif命令に対応したと見なされる


switch命令
============

::

  switch(式) {
    case 値1 :
      「式 = 値1」である場合に実行される命令（群)
    [case 値2 :
      「式 = 値2」である場合に実行される命令（群）
    [case 値N :
      「式 = 値N」である場合に実行される命令（群）...
    [default :
      式の値がすべての値に合致しない場合に実行される命令（群）]]]
  }

  var rank = 'B';
  switch(rank){
    case 'A' :
      document.writeln('Aランクです。');
      break;
    case 'B' :
      document.writeln('Bランクです。');
      break;
    case 'C' :
      document.writeln('Cランクです。');
      break;
    default :
      document.writeln('ランク外です。');
  }

* switch命令はcaseブロックを終了したところで、自動的にswitchブロックから脱出する仕組みは備えていない

  * もしもbreak命令を指定していない場合、次のcaseブロックが続けて実行されてしまう


----

* updated 2014/02/14
