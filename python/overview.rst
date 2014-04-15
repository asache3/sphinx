Pythonとは
============

* 読みやすく効率がよいコードをなるべく簡単に書けるように設計された汎用プログラミング言語
* オランダ人のGuido van Rossumが1989年のクリスマス休暇をつぶすホビープロジェクトとして開発された
* 1991年にPython0.9.0のソースコードが公開された
* イギリスのテレビ局BBCが製作したコメディ番組「空飛ぶモンティ・パイソン」にちなんで名付けられた


Pythonの特徴
==============

* インデントでブロックを表現する

  * 可読性が高い

* 扱うデータはすべてオブジェクト

* 動的型付け

  * ガーベジコレクションを内蔵している


* Battery Included

  * たくさんの標準モジュールが付属している
  * 標準ライブラリ以外のモジュールもPyPI(Python Package Index)から探すことができる
  
    * 科学技術計算

----

* マルチプラットフォーム

* インタプリタ

  * インタラクティブシェルが付属している
  * helpという関数の引数にオブジェクトやモジュールを与えると、ドキュメントを参照できる


* Python Enhancement Proposals(PEPs)

  * 言語仕様に変更を加える際のフローとして、Python1.6から導入された
  * 設計のプロセスを可視化している

* 実行速度

  * C言語やJavaには劣る
  * プログラムで速度が必要となる箇所は局所的なことが多いため、必要に応じてCでライブラリを作成してPythonコードの中から利用する

----

* 活用例

  * Dropbox
  * MAYA
  * Pinterest
  * Google(YouTube, Google App Engine)
  * Linuxのパッケージ管理


Zen of Python
===============

::

  >>> import this
  The Zen of Python, by Tim Peters

  Beautiful is better than ugly.
  Explicit is better than implicit.
  Simple is better than complex.
  Complex is better than complicated.
  Flat is better than nested.
  Sparse is better than dense.
  Readability counts.
  Special cases aren't special enough to break the rules.
  Although practicality beats purity.
  Errors should never pass silently.
  Unless explicitly silenced.
  In the face of ambiguity, refuse the temptation to guess.
  There should be one-- and preferably only one --obvious way to do it.
  Although that way may not be obvious at first unless you're Dutch.
  Now is better than never.
  Although never is often better than *right* now.
  If the implementation is hard to explain, it's a bad idea.
  If the implementation is easy to explain, it may be a good idea.
  Namespaces are one honking great idea -- let's do more of those!

