========
urllib
========

* インターネット上のデータを取得する

URLを指定してファイルを取得する
=================================

::

  urllib.request.urlretrieve(url[, ファイル[, POST用のデータ]])


URLを指定してデータを読み込む
===============================

::

  response = request.urlopen(url[, POST用のデータ[, タイムアウト]]])


データを読み込み、文字列として返す
====================================

::

  response.read([整数のサイズ])


データから1行を読み込む
=========================

::

  response.readline([整数のサイズ])


データから複数行を読み込む
============================

::

  response.readlines([整数のサイズ])


取得したデータのURLを返す
===========================

::

  response.geturl()


URLエンコードされたデータを作る
=================================

::

  parse.urlencode(データを納めたディクショナリ[, シーケンスを渡すときのフラグ=False[, エンコード[, エラーへの対処]])

  from urllib import request
  from urllib import parse

  postdic = {'name':'someone', 'email':'foo@bar.com'}
  postdata = parse.urlencode(postdic)
  file = request.urlopen('http://service.com/process.cgi', postdata)


特殊文字を置き換えてエスケープ処理を行う
==========================================

::

  parse.quote(クオートする文字列[, クオート処理から除外する文字列[, エンコード[, エラーへの対処]]])
  parse.quote_plus(クオートする文字列[, クオート処理から除外する文字列[, エンコード="ASCII"[, エラーへの対処]]])
  # parse.quote()に加えて、空白文字列を半角のプラス記号(+)に置き換える


エスケープを解く
=================

::
  
  parse.unquote(クオートを解く文字列[, エンコード="utf-8"[, エラーへの対処='replace']])
  parse.unquote_plus(クオートを解く文字列[, エンコード="utf-8"[, エラーへの対処='replace']])
