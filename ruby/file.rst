====================
File/Dir
====================

ファイル
==========

ファイル名を変更する
----------------------

::

  File.rename(before, after)

  require "fileutils"
  FileUtils.mv("data.txt", "backup/data.txt")


ファイルをコピーする
----------------------

::

  require "fileutils"
  FileUtils.cp("data.txt", "backup/data.txt")
  FileUtils.cp_r("data.txt", "backup/data.txt")


ファイルを削除する
--------------------

::

  File.delete(file)

  require "fileutils"
  FileUtils.rm(path)
  FileUtils.rm_f(path)
  FileUtils.rm_r(path)
  FileUtils.rm_rf(path)


ファイルを最後に参照した時刻/最後に修正した時刻/状態を最後に変更した時刻を取得する
------------------------------------------------------------------------------------

::

  File.ctime(path)
  File.mtime(path)
  File.atime(path)


最終参照時刻と最終修正時刻を変更する
--------------------------------------

::

  File.utime(atime, mtime, path)


ファイルの許可モードを変更する
--------------------------------

::

  File.chmod(mode, path)
  File.chmod(0644, './hoge.txt') # 8進数で指定する


ファイルの所有者を変更する
----------------------------

::

  File.chown(owner, group, path)


パス名の一番後ろの"/"以降の部分を返す
---------------------------------------

::

  File.basename(path[, suffix])


パス名の一番後ろの"/"までの部分を返す
---------------------------------------

::

  File.dirname(path)


パス名の拡張子を返す
---------------------

::

  File.extname(path)


ディレクトリ
==============

カレントディレクトリを取得する
--------------------------------

::

  Dir.pwd


カレントディレクトリを変更する
--------------------------------

::

  Dir.chdir(dir)


ディレクトリの内容を読む
--------------------------

::

  dir = Dir.open("/usr/bin")
  while name = dir.read
    p name
  end
  dir.close

  Dir.open("/usr/bin") do |dir|
    dir.each do |name|
      p name
    end
  end


ディレクトリを作成する
------------------------

::

  Dir.mkdir(path)

  require "fileutils"
  FileUtils.mkdir_p("foo/bar/baz")


ディレクトリを削除する
------------------------

::

  Dir.rmdir(path)


ディレクトリ以下のすべてのファイルパスを渡す
----------------------------------------------

::

  Find.find(dir) do |path|
    ...
    Find.prune # それ以下の検索を省略する
  end


テンポラリファイルを作成する
------------------------------

::

  Tempfile.new(basename[, tempdir])


テンポラリファイルを閉じる
----------------------------

::

  tempfile.close(real) 
  # realがfalseならば、テンポラリファイルはGCによって削除される。そうでなければ、すぐに削除される
