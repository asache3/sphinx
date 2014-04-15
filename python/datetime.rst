==========
DateTime
==========

日時データを扱う
==================

datetime.dateクラス
---------------------

::

  import datetime

  datetime.date(year, month, day)

  d = datetime.date(2012, 5, 1)
  d = datetime.date.today()
  d.year


datetime.timeクラス
---------------------

::

  import datetime

  datetime.time(hour[, minute[, second[, microsecond[, tzinfo]]]])

  t = datetime.time(10, 20, 0)
  t.hour


datetime.datetimeクラス
-------------------------

::

  import datetime

  datetime.datetime(year, month, day[, hour[, minute[, second[, microsecond[, tzinfo]]]]])

  dt = datetime.datetime(2012, 5, 1, 10, 20, 0)
  dt = datetime.datetime.now()
  dt.year
  dt.hour  


datetime.timedeltaクラス
--------------------------

::

  import datetime

  datetime.timedelta([days[, seconds[, microseconds[, milliseconds[, minutes[, hours[, weeks]]]]]]])

  td = datetime.timedelta(100)


datetimeオブジェクトをフォーマットで指定した文字列に変換する
--------------------------------------------------------------

::

  strftime(フォーマット文字列)

  d.strftime("%d/%m/%y")


文字列をdatetimeオブジェクトに変換する
----------------------------------------

::

  strptime(日付文字列, フォーマット文字列)

  dt = datetime.strptime("21/11/06 16:30", "%d/%m/%y %H:%M")
  
  
カレンダーを取得する
======================

::

  import calendar

  print(calendar.month(2199, 12))

