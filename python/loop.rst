========
ループ
========

for文
=======

* ループが終わった後に実行したいプログラムがある場合には、elseを使う

::

  for item in range(10):
    print(item)
  else:
    print("done")


range関数
-----------

* 1つだけ整数を与えると、0から始まり、引数の1つ前の値まで順に増える数値を作る
* 2つの引数を与えると、ある区間の連続した数値を作る
* 3番目の引数にはステップ数を与える

::

  range([開始する数値, ]終了する数値[, ステップ])

  range(10)
  range(2, 10)
  range(2, 10, 2)


enumerate関数
---------------

* リストの要素を順に処理しつつ、インデックス番号も知る

::

  for index, name in enumerate(["apple", "orange", "lemon"]):
    print(index, name)


break文とcontinue文
=====================

* ある条件を満たしたらループの途中で終了したい場合にはbreak文を使う
* continue文はループブロックの先頭まで処理を戻し、ループ処理を続ける


while文
=========

::

  cnt = 0
  while cnt < 10:
    print(cnt)
    cnt += 1

* Pythonにdo-while文はない


無限ループ
------------

::

  while True:
    print("Type Ctrl+C to stop")


2つのシーケンスを使ったループ
===============================

::

  for n, w in zip([1, 2, 3, 4],['a', 'b', 'c', 'd']):
    print(n, w)
