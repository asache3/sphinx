Sphinx S6 Sample
===================


インストール方法
----------------------

インストール

.. code-block:: bash

    $ easy_install sphinxjp.themes.s6

conf.py 設定

.. code-block:: python

    extensions = ['sphinxjp.themecore']
    html_theme = 's6'


リスト
--------

* 番号なしリスト1
    * 番号なしリスト1-1
* 番号なしリスト2

    1. 番号付きリスト1
    2. 番号付きリスト2


フォーマット
--------------

* *強調*
* **強い強調**
* `リテラル` , ``リテラル``
* :command:`command`


センタリング
--------------

.. s6:: styles

    h2: {fontSize:'100%', textAlign:'center', margin:'30% auto'}


アクション : フェードイン
--------------------------
対象のエレメントを複数回に分けてフェードイン表示します。

* リスト1
* リスト2
* リスト3

.. s6:: styles

    'ul/li': {display:'none'}

.. s6:: actions

    ['ul/li[0]', 'fade in', '0.3'],
    ['ul/li[1]', 'fade in', '0.3'],
    ['ul/li[2]', 'fade in', '0.3'],


画像
-----------------------
* 画像を挿入します

.. figure:: logo.png

.. s6:: styles

    'div': {textAlign: 'center'},
    'div/img': {width: '30%', opacity: 0.9},
