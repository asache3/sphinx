=================
Web Programming
=================

WSGI(Web Server Gateway Interface)
====================================

* アプリケーションサーバーと、アプリケーションやフレームワーク間の規約(PEP333)

  * 引数を2つ受け取り、イテレータを返す
  * 2つ目の引数をアプリケーション内で呼び出す

::

  def hello(environ, start_response):
    start_response("200 OK", [("Content-type", "text/plain;charset=utf-8")])

    return [b"Hello, world"]


WSGIアプリケーションを実行
---------------------------- 

* wsgiref.simple_serverモジュールを使って実行する

::

  from wsgiref.simple_server import make_server

  httpd = make_server('', 8080, hello)
  httpd.serve_forever()


GETとPOST
===========

* environのREQUEST_METHODの値を利用してどのメソッドでリクエストされたのか確認できる

::

  request_method = environ['REQUEST_METHOD']

  if request_method == 'GET':
    return form(environ, start_response)
  elif request_method == 'POST':
    return _calc(environ, start_response)


WebOb
=======

* WSGIの規約を使いやすくオブジェクトでまとめたライブラリ


Jinja2
========

* テンプレートエンジン
* "{{" "}}"で囲まれた部分にPythonの式を使用できる
* "{%" "%}"で囲まれている部分がディレクティブ

::

  {% extends "layout.html" %}
  {% block body %}
    <ul>
    {% for user in users %}
      <li><a href="{{ user.url }}">{{ user.username }}</a></li>
    {% endfor %}
    </ul>
  {% endblock %}


WebDispatch
=============

* webdispatch.URLDispacherは、URLパターンで処理を振り分けるライブラリ

::

  application = URLDispatcher()
  application.add_url('hello', '/hello', hello)
  application.add_url('hello_name', '/hello/{name}', hello)

* URLDispatcherはenviron['webdispatch.urlgenerator']にURLGeneratorを作成する

::

  urlgenerator = request.environ['webdispatch.urlgenerator']
  urlgenerator.generate('hello_name', name='python')

* webdispatch.MethodDispatcherでは、HTTPリクエストで処理を振り分ける

::

  application = MethodDispatcher()
  application.register_app("get", hello_form)
  application.register_app("post", hello)
