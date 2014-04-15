====================
RegExpオブジェクト
====================

RegExpオブジェクトを生成する方法
==================================

1. RegExpオブジェクトのコンストラクタを経由する

* コンストラクタ構文では「\\」をエスケープする

::

  var 変数名 = new RegExp('正規表現', 'オブション');
  var p = new RegExp('http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?','gi');


2. 正規表現リテラルを利用する

* 正規表現リテラルでは「/」をエスケープする

::

  var 変数名 = /正規表現/オプション;
  var p = /http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/gi;


正規表現による検索の基本
==========================

* 正規表現で検索するには、String.matchメソッドを利用する

::

  var p = /http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/gi;
  var str = 'サポートサイトはhttp://www.wings.msn.to/です。';
  var str += 'サンプル紹介サイトHTTP://www.web-deli.com/もよろしく！';
  var result = str.match(p);
  for(var i = 0; i < result.length; i++){
    document.writeln(result[i]);
  }

* RegExp.execメソッドは、グローバル検索(gオプション)が有効であるかどうかに関わらず、一度の実行でひとつの実行結果しか返さない

  * execメソッドは(RegExpオブジェクト)は、「最後にマッチした文字位置を記憶する機能を持っている」

::

  var p = /http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/gi;
  var str = 'サポートサイトはhttp://www.wings.msn.to/です。';
  var str += 'サンプル紹介サイトHTTP://www.web-deli.com/もよろしく！';
  while((result = p.exec(str)) != null) {
    document.writeln(p.lastIndex + ':' + result[0]); // 検索を開始する位置
    document.writeln(leftContext:' + RegExp.leftContext); // 最後のマッチ文字列の前の文字列
    document.writeln(rightContext:' + RegExp.rightContext); // 最後のマッチ文字列の後に続く文字列
    document.writeln(lastMatch:' + RegExp.lastMatch); // 最後のマッチした文字列
    document.writeln(lastParen:' + RegExp.lastParen); // 最後にマッチした()で囲まれたグループの文字列
    document.writeln($1:' + RegExp.$1); // パターンにマッチした文字列を順に格納
    document.writeln($2:' + RegExp.$2);
    document.writeln($3:' + RegExp.$3);
  }


マッチングの成否を検証
========================

* testメソッドは与えられた文字列を検索し、その結果を真偽値(true/false)で返す

::

  document.writeln(p.test(str1));

* String.searchメソッドは指定された正規表現で最初にマッチした文字位置を返す

  * マッチ文字列が存在しない場合に、戻り値として-1を返す

::

  document.writeln(str1.search(p));


正規表現で文字列を置き換える
==============================

* String.replaceメソッドを利用すれば、正規表現でマッチした文字列を置換することができる

::

  置き換え対象の文字列.replace(正規表現オブジェクト, 置換後の文字列)
  document.writeln(str.replace(p, '<a href="$1">$1</a>'));


正規表現で文字列を分割する
============================

* 正規表現で文字列を分割するには、String.splitメソッドを使用する

  * 戻り値として分割した結果を配列として返す

::

  var p = /[\/\.\-]/gi;
  document.writeln('2010/12/04'.split(p));

