========
ループ
========

while/do...while命令
======================

::

  while(条件式) {
    条件式がtrueである時に実行される命令（群）
  }

  var x = 8;
  while(x < 10) {
    document.writeln('xの値は' + x);
    x++;
  }

* do...while命令の末尾には、文の終了を表すセミコロンが必要

::

  do {
    条件式がtrueである時に実行される命令（群）
  }

  do {
    document.writeln('xの値は' + x);
    x++;
  } while(x < 10);


for命令
=========

::

  for(初期化式; ループ継続条件式; 増減式) {
    ループ内で実行する命令（群）
  }  

  for(var x = 8; x < 10; x++) {
    document.writeln('xの値は' + x);
  }

  for (var i = 1, j = 1; i < 5; i++, j++) {
    document.writeln('i * jは' + i * j);
  }

* カンマ演算子を利用すれば、複数のカウンタ変数を持つ、より複雑なforループを記述することができる


for...in命令
==============

::

  for(仮変数 in 配列/オブジェクト) {
    ループ内で実行する命令（群）
  }

  var triangle = {width:30, height:50}
  for(var j in triangle) {
    document.writeln(j + '=' + triangle[j]);
  }

* for...inループを利用するのは、連想配列(ハッシュ)、オブジェクトのキーを操作する場合に留め、通常配列を操作する場合は、原則としてforループを利用する


break/continue命令
====================

* break命令で特定の条件を満たした場合にループを強制的に中断する

::

  var result = 0;
  for(var i = 0; i <= 100; i++) {
    result += i;
    if (result > 1000) { break; }
  }

* continue命令で現在のループだけをスキップして、次のループを継続して実行する

::

  var result = 0;
  for(var i = 0; i < 100; i++)
    if (i % 2 == 0) { continue; }
    result += i;
  }

* ラベルを指定することで、ラベルのついたループを脱出する

::

  kuku:
  for (var i = 1; i < 10; i++) {
    for (var j = 1; j < 10; j++) {
      var k = i * j;
      if (k > 30) { break kuku; }
      document.write(k + '&nbsp;');
    }
    document.write('<br />');
  } 


----

* updated 2014/02/18
