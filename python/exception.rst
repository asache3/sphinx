===========
Exception
===========

例外を捕まえる
================

::

  try:
    result = x / y
  except ZeroDivisionError as e: # クラスを指定して、特定の例外を受け取る
    print(type(e))
    print(format_tb(e.traceback__))
    print('メッセージ':{0}'.format(e.args))
  else: # 例外が発生しなかった場合の処理
    print "result is", result
  finally: # 例外が発生してもしなくても実行する
    print "executing finally clause"


例外を発生させる
==================

::

  raise ValueError("Some message")


* AssertionErrorを送出するにはassert文を使う

::

  assert 条件テスト, メッセージ
  assert left < right, 'left must be smaller than right'


トレースバックを表示する
==========================

* tracebackモジュールを使うと、例外が発生したときに出力されるトレースバックを表示したり、文字列に格納したりできる

::

  import traceback

  try:

  except:
    traceback.print_exc() # 例外を表示する
    ex = traceback.format_exc() # 例外を文字列として取り出す


