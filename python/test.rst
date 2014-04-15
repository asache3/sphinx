======
Test
======

unittest
==========

* テストはtest_で始まるメソッド名で記述する

::

  # simpletest.py

  import unittest

  class SimpleTests(unittest.TestCase):
      def test_it(self):
          result = " ".join("abc")
          self.assertEqual(result, "a b c")


テストを実行する
------------------

::

  python -m unittest simpletest 


doctest
=========

* ソースコードのコメント中に実行例としてテストを記述する

::

  def safe_str(s):
      """
      >>> print(safe_str(None))
      <BLANKLINE>
      >>> print(safe_str("test"))
      test
      """
      if s is None:
          return ""
      else:
          return s

  if __name__ == '__main__':
      import doctest
      doctest.testmod()


ドキュメント中の実行例をテストする
------------------------------------

::

  import doctest
  doctest.testfile('test_fizzbuss.txt')


Mock
======

* テスト対象以外のオブジェクトはモックという偽物を使う
* テストのために特定の値を返すようにするには、return_valueを指定する
* メソッド呼び出しで例外が発生されるようにするには、side_effectに例外オブジェクトを指定する

::

  from unittest import mock

  m = mock.Mock()
  m.func()
  m.func.assert_called_with()

  m.spam.return_value = "SPAM"
  m.spam()
  # "SPAM"
  
  m.spamspamspam.side_effect = Exception("No! Without SPAM!")
  m.spamspamspam()


mock.patch
------------

* テストメソッドにmock.patchデコレータで差し替え対象のオブジェクトを指定すると、引数に差し替えられたMockオブジェクトが渡ってくるようになる
* Mockオブジェクトに、戻り値などを指定してテストを実行する

::

  import unittest
  from unittest import mock
  from mod2 import func2

  class func2Tests(unittest.TestCase):
      @mock.patch("mod1.func1")
      def test_odd(self, func1):
          func1.return_value = 33
          result = func2()
          self.assertEqual(result, "odd")


テストカバレージを測定する
============================

::

  easy_install nose coverage
  env/bin/nosetests --tests=ppjp --with-coverage --cover-package=ppjp  
