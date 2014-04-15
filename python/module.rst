========
Module
========

モジュールを読み込む
======================

* from文を使うと、読み込んだ関数を使うときなどにモジュール名を省略できる

::

  import モジュール名

  import math
  math.sin(x)

  from モジュール名 import 関数名

  from math import sin, radians
  sin(x)


モジュールの検索パス
----------------------

::

  import sys
  print(sys.path)
  sys.path.append("./mypackages.zip")


モジュールを作る
==================

* スクリプトファイルの名前のうち、「.py」などの拡張子の前までがモジュール名となる

  * 数字から始まる、または拡張子の前にドットを含んだファイル名は付けない
  * 変数名や関数名として使われるような一般的な名前はなるべく使わない
  * 特別な必要がないかぎり、アルファベットの小文字だけを使う


モジュールをインポートするときの挙動
======================================

* ファイルを読み込むとき、トップレベルのブロックに定義されている命令を実行する
* if文はトップレベルのブロックにあっても、実行されない


パッケージ
============

* パッケージの実態は、モジュールとなるファイルを納めたディレクトリ
* 階層構造をドットで区切って表記する
* パッケージとして使いたいディレクトリには、__init__.pyという名前のファイルを設置する

::

  import packagea.modulea

  from packagea import modulea


名前空間パッケージ
====================

* 異なるディレクトリにあるモジュールを1つのパッケージにまとめる
* __init__.pyがあるとそのディレクトリは通常のパッケージとなる


拡張モジュール
================

* C言語などを使って、Python API(Application Programming Interface)を使って開発されたモジュール


アプリケーションライブラリの配布
==================================

* setup.pyを作成する

::

  from setuptools import setup, find_packages

  setup(
      name="ppjp.char",
      packages=['ppjp.chat'],
      version="0.1"
      author = "Perfect Python",
      author_email="ppjp@perfectpython.jp",
      description="a simple gui chat application",
      ....
  )

* setupの内容をテストする

::

  python setup.py egg_info

* PyPIへ登録する

1. ユーザー登録/ライブラリの登録

::

  python setup.py register

2. 配布物をアップロード

::

  python setup.py sdist upload

