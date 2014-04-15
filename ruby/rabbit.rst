========
Rabbit
========

Rabbitをインストール
======================

::

  gem install rabbit


ファイルを表示する
====================

::

  rabbit [file name]


PDFファイルに変換する
=======================

::

  rabbit --print --output-filename=[output file name] [input file name]


サンプルmdファイル
====================

::

  # Rabbit Sample

  subtitle
  :   Markdownでプレゼンテーション

  author
  :   asache3

  theme
  :   clear-blue


  # タイトル

  * レベル1-1
    * レベル2-1
      * レベル3-1
  * レベル1-2


  # フォント

  * 普通
  * *強調*


  # ソース

  以下がソース

      # comment
      def method_name
        body
      end
  {: lang="ruby"}


  # 引用

  > You take the ''red pill'', you stay in Wonderland and
  > I show you how deep the ''rabbit-hole'' goes.


  # 表

  |見出し1|見出し2|
  |-------|-------|
  | 内容1 | 内容2 |


  # 画像

  ![](lavie.png "Lavie"){:width='200' height='200'}


Reference
===========

* `Rabbit <http://rabbit-shocker.org>`__
