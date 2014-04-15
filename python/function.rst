==========
Function
==========

関数を作る
============

::

  def uranai(name, hero="Pythonマスター"):
    result = name + "さんは" + hero + "になれます！"
    return result

  oracle = uranai("ats")
  print(oracle)


ローカル変数
==============

* 関数のブロックのなかで初めて代入が行われた変数
* 特殊な記号を利用せず、変数が定義された場所が変数の性質を決める


可変引数
==========

::

  def foo(a, b, *vals):
    print(a, b, vals)

  foo(1, 2, 3, 4, 5)
  # (1, 2, (3, 4, 5))


キーワード引数
================

::

  def bar(a, b, **args):
    print(a, b, args)

  bar(1, 2, c=3, d=4)
  # (1, 2, {'c': 3, 'd': 4})


lambda式
==========

* 手軽に関数を作る

::

  lambda 引数のリスト : 引数を使った式

  sum = lambda x, y, z: x + y + z
  sum(2, 3, 4)


名前空間、スコープ
====================

* 名前空間とは、オブジェクトが所属する「場所」のこと
* スコープとは、コード上でオブジェクトが有効になる範囲のこと

  * ビルトインスコープ

    * 組み込み関数や組み込みの変数など、特に宣言やインポートをしなくても利用できる関数や変数などの名前が定義されているスコープ


  * モジュール(グローバル)スコープ

    * モジュールのトップレベルのブロックで定義されているスコープ
    * スクリプトファイルやモジュールが、プログラムで自由に名前を定義できる一番上位のスコープ

  * ローカルスコープ

    * 関数が定義されると作られるスコープ
    * global文を使うと、ローカル変数に定義した変数をモジュールスコープに移すことができる

::

  # Python3
  import builtins
  dir(builtins)

  # Python2
  import __builtin__
  dir(__builtin__)

  x = 10
  def foo(n):
    global x
    x = n

  foo(100)
  x 
  # 100

* 内側の関数で外側にあるローカル変数の変更が必要な場合、nonlocal文で変数が外側の関数で定義されたローカル変数であると宣言する
* 関数の内部で定義され、かつ外側の関数のローカル変数を参照している関数のことをクロージャと呼ぶ

::

  def outer()
    var1 = '外側の変数'
    var2 = 'これも外側の変数'

    def inner()
      nonlocal var1

      var1 = '内側で変更'
      var3 = '内側の変数'
      return (var1, var2, var3)

  return inner()


デコレータ
============

* 関数の情報をわかりやすく明示し、機能を追加・変更するための機能
* デコレートする関数定義の手前で、前もって関数を置き換えることができる

::

  def show_message(f):
    def wrapper():
      print("function called")
      return f()

    return wrapper

  @show_message
  def spam1():
    do_spam1

  これは以下と同じ

  def spam1():
    do_spam1

  spam1 = show_message(spam1)

