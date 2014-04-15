===========
Time/Date
===========

Time/Date/DateTime
====================

* Timeクラス

  * C言語のtime_t型の実装に由来する
  * システム内の時刻を表現するためのクラス
  * プラットフォームによっては1970年から2038年の範囲しか扱うことができない

* dateライブラリ

  * システムの制限を受けない
  * 日付を表現するためのDateクラス
  * 日付と時刻を表現するためのDateTimeクラス


Timeクラス
============

現在の時刻を表す
------------------

::

  Time.new
  Time.now


年、月、日などを取得する
--------------------------

::

  t = Time.new
  p t.year
  p t.month
  p t.day


指定した時刻を表すTimeオブジェクトを得る
------------------------------------------

::

  t = Time.mktime(year[, month[, day[, hour[, min[, sec[, usec]]]]]])
  t = Time.mktime(2009, 10, 11, 22, 12, 56)


文字列を解析する
-----------------

::

  require "time"
  Time.parse(str)
  p Time.parse("2009/10/17 20:54:15")


時刻をフォーマットに従った文字列にする
----------------------------------------

::

  t.strftime(format)
  t.strftime("%Y-%m-%d %H:%M:%S %z")
  t.to_s


DateTimeクラス
================

現在時刻を取得する
--------------------

::

  require "date"
  t = DateTime.now
  p t.year
  p t.month
  p t.day
  p t.hour
  p t.min
  p t.sec


日付と時刻を指定する
----------------------

::

  require "date"
  t = DateTime.new(1993, 2, 24, 12, 30, 45)


文字列を解析する
------------------

::

  puts DateTime.parse("Tue Oct 13 22:59:36 JST 2009")


フォーマットして出力する
--------------------------

::

  p t.strftime("%Y/$m/%d %H:%M:%S")
  p t.to_s


DateTimeオブジェクトからTimeオブジェクトを生成する
----------------------------------------------------

::

  require "date"
  d = DateTime.now
  p d.to_time


Dateクラス
============

現在の日付を取得する
----------------------

::

  require "date"
  d = Date.today
  p d.year
  p d.month
  p d.day


日付を指定してオブジェクトを生成する
--------------------------------------

::

  require "date
  d = Date.new(2009, 9, 25)


月末の日付を指定する
----------------------

::

  require "date"
  d = Date.new(2009, 4, -1)


前後の月の同日を表すオブジェクトを得る
----------------------------------------

::

  require "date"
  d = Date.today
  puts d >> 1 #=> 後の月の同日
  puts d << 1 #=> 前の月の同日


文字列からDateオブジェクトを得る
----------------------------------

::

  require "date"
  puts Date.parse("Tue Oct 14 11:50:12 JST 2009")


日付のフォーマット
--------------------

::

  require "date"
  t = Date.today
  p t.strftime("%Y/%m/%d %H:%M:%S")
  p t.to_s

