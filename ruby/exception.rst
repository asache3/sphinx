===========
Exception
===========

例外処理の書き方
==================

::

  begin
    例外を発生させる可能性のある処理
  rescue => 変数
    例外が起こった場合の処理
    retry
  ensure
    例外の有無に関わらず実行される処理
  end


捕捉する例外を指定する
========================

::

  begin
    例外を発生させる可能性のある処理
  rescue Exception1, Exception2 => 変数
    Exception1またはException2に対する処理
  rescue Exception3
    Exception3に対する処理
  rescue
    それ以外の例外が起こった場合の処理
  end


例外オブジェクトのメソッド
============================

.. csv-table::
  :header-rows: 1

  メソッド名,意味
  class,例外の種類
  message,例外のメッセージ
  backtrace,例外の発生した位置に関する情報($@は$!.backtraceと同じ)


rescue修飾子
==============

::

  式1 rescue 式2


例外を発生させる
==================

* raise メッセージ

  * Runtimeエラーを発生させる。新しく生成された例外オブジェクトにメッセージとして文字列をセットする

* raise 例外クラス

  * 指定した例外を発生させる

* raise 例外クラス, メッセージ

  * 指定した例外を発生させる。新しく生成された例外オブジェクトにメッセージとして文字列をセットする

* raise

  * rescue節の外ではRuntimeErrorを発生させる。rescue節の中では最後に発生した例外($!)をもう一度発生させる
