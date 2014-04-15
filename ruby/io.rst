====
IO
====

ファイルを開く
================

::

  io = open(file, mode)

  File.open("foo.txt") do |io|
    while line = io.gets
      ...
    end
  end


ファイルを閉じる
==================

::

  io.close


ファイルのデータを一度に読み込む
==================================

::

  data = File.read("foo.txt")


HTTPやFTPのURLを開く
======================

::

  require "open-uri"

  open("http://www.ruby-lang.org") do |io|
    puts io.read
  end

  open("ftp://www.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz") do |io|
    open("ruby-1.8.7.tar.gz", "w") do |f|
      f.write(io.read)
    end
  end


データを1行読み込む
=====================

::

  io.gets(rs)


標準入力を読み込む
--------------------

::

  puts '名前を入力してください'
  name = gets.chomp
  puts "あなたの名前は#{name}です。"


何行読み込んだかを取得する
============================

::

  io.lineno


データを1バイト読み込む
=========================

::

  io.getc


文字を入力バッファに戻す
==========================

::

  io.ungetc(ch)


サイズを指定して読み込む
==========================

::

  io.read(size)


改行文字を補って出力する
==========================

::

  io.puts(str0, str1, ...)
  $stdout.puts "foo", "bar", "baz"


指定した文字列を出力する
==========================

::

  io.print(str0, str1 ...)


書式指定付きで出力する
========================

::

  io.printf(fmt, arg0, arg1, ...)


引数で指定した文字列を出力する
================================

::

  io.write(str)


現在のファイルポインタの位置を取得する/変更する
=================================================

::

  io.pos
  io.pos = (position)


ファイルポインタを移動する
============================

::

  io.seek(offset, whence)

whenceに指定する値
--------------------

.. csv-table::
  :header-rows: 1

  whence,意味
  IO::SEEK_SET,offsetで指定された位置にファイルポインタを移動する
  IO::SEEK_CUR,offsetを現在の相対位置とみなしてファイルポインタを移動する
  IO::SEEK_END,offsetをファイルの末尾からの相対位置として指定する


ファイルポインタをファイルの先頭に戻す
========================================

::

  io.rewind


ファイルの長さを指定したサイズに切り詰める
============================================

::

  io.truncate(size)


バッファに溜まったデータを強制的に出力する
============================================

::

  io.flush


バッファへの書き込みのたびにflushメソッドを呼ぶ
=================================================

::

  io.sync = true


コマンドとデータをやりとりする
================================

::

  IO.popen(command, mode)
  file = IO.popen("gunzip -c #{filename}")
