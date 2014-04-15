========
String
========

文字コードを指定する
======================

* マジックコメント

::

  # coding: utf-8


文字列を作る
==============

* %Qを使うと「""」で囲った文字列、%qを使うと「''」で囲った文字列と同様の扱いになる

::

  desc = %Q{Rubyの文字列には「''」も「""」も使われます。}
  str = %q|Ruby said, 'Hello world'|


式展開
========

* 「""」と使うと「#{}」で囲まれた部分をRubyの式として実行し、その結果に置き換えることができる

::

  moji = "文字列"
  str1 = "あれも#{moji}"


ヒアドキュメント
==================

::

      print(<<-"EOB")
  i: #{i}
  j: #{j}
  i*j = #{i*j}
      EOB

  str = <<EOF
  Hello!
  Hello!
  Hello!
  EOF


文字列を分割する
==================

* 特定の文字で分割する

::

  column = str.split(/:/)

* 特定の桁数で分割する

::

  data.unpack("a10a20a30")


文字列をつなげる
==================

* 新しい文字列を作る

::

  str = hello + world

* すでにある文字列に別の文字列をつなげる

::

  hello << world
  hello.concat(world)


文字列を比較する
==================

::

  p "aaa" == "baa" #=> false
  p "aaa" != "baa" #=> true


文字列を検索する
==================

* indexメソッドとrindexメソッドは、探す文字列が見つかった場合は一致する部分の先頭のインデックスを返し、見つからなかった場合はnilを返す

::

  p str.index("momo")
  p str.rindex("momo")


* 単純に含まれているかどうかを調べる

::

  p str.include?("momo")


改行文字を取り除く
====================

* 必ず1文字削る

::

  newstr = str.chop
  newstr = str.chop!

* 改行がある場合のみ削る

::

  newstr = str.chomp
  newstr = str.chomp! 


空白文字を削除する
====================

* 先頭と末尾にある空白文字を削除する

::

  p str.strip
  p str.strip!


文字コードを変換する
======================

::

  utf8_str = euc_str.encode("utf-8")
  str.encode!("utf-8")
