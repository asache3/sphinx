=====
csv
=====

* CSVファイルを扱うためのモジュール

ファイルオブジェクトを指定して呼び出す
========================================

::

  csv.reader(ファイルオブジェクト[, dialect='excel'[, fmtparam]])

  import csv

  with open("test.csv", encoding="utf-8") as csvfile:
      for row in csv.reader(csvfile):
          print(row)


CSVファイルを書き出す
=======================

::

  spamwriter = csv.writer(ファイルオブジェクト[, dialect='excel'[, fmtparam]])
  spamwriter.writerow(シーケンス) # 要素を区切って書き出す
  spamwriter.writerows(シーケンス) # 要素を区切って複数の行を書き出す

