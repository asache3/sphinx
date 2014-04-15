===============
BeautifulSoup
===============

* HTMLとXMLファイルを処理するためのライブラリ

  * lxmlがインストールされている場合には、速度を重視してlxmlのパーサを利用する


パース処理
============

* HTMLのパース処理は、bs4.BeautifulSoupを使う
* XMLをパースする場合は、第2引数に"features="xml"を入れる

::

  import requests
  from bs4 import BeautifulSoup

  res = requests.get("http://gihyo.jp/")
  soup = BeautifulSoup(res.text)


HTMLを探索する
================

* 取得したsoupのプロパティにタグ名を指定すると、最初に見つかったタグを検索する
* findメソッドでも検索できる。すべての要素を検索する場合は、findAllメソッドを使用する
* parentプロパティで、HTMLのタグツリーの1つ上の要素が取得できる
* next_siblingで同一階層の次の要素、previous_siblingで同一階層の直前の要素が取得できる
* childrenで子要素すべてが取得できる
* attrsで要素の属性が取得できる
* 整形したHTMLを出力するには、prettifyメソッドを実行する
* タグに囲まれた文字列を取得するには、textメソッドを実行する

::

  title_tag = soup.head.title
  print("tag name : " + title_tag.name)
  print("value : " + title_tag.string)

  res = requests.get(api_url, proxies=proxies)
  soup = BeautifulSoup(res.text)

  news = soup.find('item')
  print("text :" + news.text)
