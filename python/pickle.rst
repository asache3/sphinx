========
pickle
========

* Pythonのオブジェクトの永続化やシリアライズを行う
* pickle化したオブジェクトは、複数のプラットフォーム間で互換性がある

シリアライズを行う
====================

::

  pickle.dump(永続化するオブジェクト, ファイル[, プロトコルバージョン])
  pickle.dumps(永続化するオブジェクト[, プロトコルバージョン])

  import pickle
  pickle.dump(o, open("pickle.dump", "wb"))


永続化したオブジェクトを復元する
==================================

::

  pickle.load(ファイル[, エンコード="ASCII"[, エラーへの対処="strict"]])
  pickle.loads(バイト型文字列[, エンコード="ASCII"[, エラーへの対処="strict"]])

  import pickle
  pickle.load(open("pickle.dump", "rb"))


JSON
======

PythonオブジェクトをJSON形式のデータに変換する
------------------------------------------------

::

  import json
  json.dump(Pythonオブジェクト, ファイル)
  json.dumps(Pythonオブジェクト[, オブションの引数...])


JSONをPythonのデータ型に変換する
----------------------------------

::

  import json
  json.load(fp) # ファイルオブジェクトfp
  json.loads(s) # JSON文字列s

