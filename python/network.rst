=========
Network
=========

requestsモジュール
====================

* シンプルで高機能なHTTPライブラリ

  * urllibは低レベルな基本的な機能のみを提供しているため、処理が煩雑になる


GETメソッド
-------------

::

  import requests

  res = requests.get("http://gihyo.jp")
  res.status_code == requests.codes.ok


POSTメソッド
--------------

::

  import requests

  res = requests.post("http://example.com/", {"key": "value1", "key2": "value2"})
  print(res.text)

  files = {"attachment": ("myfile.xlsx", open("myfile.xlsx", "rw"))}
  res = requests.post("http://example.com/", {"key1": "value1", "key2": "value2"}, files=files)
  print(res.text)


lxml XMLツールキット
======================

* XML処理機能は、標準ライブラリのxml.etree.ElementTreeモジュールで行う
* lxml XMLツールキットは、XMLを処理するための標準ライブラリElementTreeと互換APIを備えている


パース処理
------------

* XMLファイルをパースするには、parseメソッド、または、fromstringメソッドを使用する

  * parseメソッドには、ファイルへのパス、または、IOストリームを渡す
  * fromstringはXMLの文字列を渡してパースする

::

  import requests
  from lxml import etree

  res = requests.get("http://rss.rssad.jp/rss/gihyo/feed/atom")
  open("gihyo.xml", wb").write(res.content)
  tree = etree.parse("gihyo.xml")
  root = tree.getroot()

  root = etree.fromstring(res.text.encode("utf-8")) 


要素の探索
------------

* 属性の検索はfindメソッド、またはfindallメソッドを使用する

  * findメソッドは最初に見つかった要素を返す
  * findallはすべての検索結果を返す
  * 両方のメソッドは引数にXPathを指定した文字列を引数に取る

::

  print(root.tag)

  for child in root:
    print(child)

  link = root.find("{http://www.w3.org/2005/Atom}link")
  print(link.attrib)


feedparser
============

* フィードを取得して解析するライブラリ
* parseメソッドを利用してフィードを解析する

::

  import feedparser

  parsed = feedparser.parse("http://rss.rssad.jp/rss/gihyo/feed/atom")
  feed = parsed.feed
  print(feed.title)

