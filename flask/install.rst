=========
Install
=========

Install Flask
===============

::

  pip install Flask


Install SQLAlchemy
====================

::

  pip install Flask-SQLAlchemy


Hello, World!
===============

::

  vim hello.py

::

  from flask import Flask
  app = Flask(__name__)

  @app.route("/")
  def hello():
      return "Hello World!"

  if __name__ == "__main__":
      app.run()
      # app.run(host='0.0.0.0') # 外から見えるようにする場合

::

  python hello.py
