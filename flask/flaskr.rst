========
flaskr
========


Directory Structure
=====================

::

  run.py
  flaskr/
      __init__.py
      config.py
      views.py
      models.py
      templates/
      static/


run.py
--------

::

  #!/usr/bin/env python
  from flaskr import app
  app.run(host='0.0.0.0', debug=True)


flaskr/__init__.py
--------------------

::

  from flask import Flask
  from flask.ext.sqlalchemy import SQLAlchemy

  app = Flask(__name__)
  app.config.from_object('flaskr.config')
  db = SQLAlchemy(app)


flaskr/config.py
------------------

::

  SQLALCHEMY_DATABASE_URI = 'sqlite:///flaskr.db'
  SECRET_KEY = "secret key"


flaskr/models.py
------------------

::

  # coding: utf-8
  from flaskr import db
  from sqlalchemy import *

  class Entry(db.Model):
      u"ブログエントリ"
      id = Column(Integer, primary_key=True)
      title = Column(Text)
      text = Column(Text)

      def __repr__(self):
          return "<Entry id={id} title={title!r}>".format(id=self.id, title=self.title)

  def init():
    db.create_all()


Create Database
+++++++++++++++++

::

  python
  import flaskr.models import init
  init()


flaskr/views.py
-----------------

::

  import flask
  from flaskr import app, db
  from flaskr.models import Entry

  @app.route('/')
  def show_entries():
      entries = Entry.query.order_by("id desc").limit(10).all()
      return flask.render_template('show_entries.html', entries=entries)

  @app.route('/add', methods=['POST'])
  def add_entry():
      entry = Entry(title=flask.request.form['title'], text=flask.request.form['text'],)
      db.session.add(entry)
      db.session.commit()
      flask.flash('New entry was successfully posted')
      return flask.redirect(flask.url_for('show_entries'))


flaskr/templates/show_entries.html
------------------------------------

::

  <!doctype html>
  <html>
  <head>
      <title>Flaskr</title>
      <link rel=stylesheet type=text/css href="{{ url_for('static', filename='style.css') }}">
  </head>
  <body>
      <div class=page>
      <h1>Flaskr</h1>
      {% for message in get_flashed_messages() %}
          <div class=flash>{{ message }}</div>
      {% endfor %}
      <form action="{{ url_for('add_entry') }}" method=post class=add-entry>
          <dl>
              <dt>Title:
              <dd><input type=text size=30 name=title>
              <dt>Text:
              <dd><textarea name=text rows=5 cols=40></textarea>
              <dd><input type=submit value=Share>
          </dl>
      </form>
      <ul class=entries>
      {% for entry in entries %}
          <li><h2>{{ entry.title }}</h2>{{ entry.text }}
      {% else %}
          <li><em>Unbelievable.  No entries here so far</em>
      {% endfor %}
      </ul>
      </div>
  </body>
  </html>


flaskr/static/style.css
-------------------------

::

  body            { font-family: sans-serif; background: #eee; }
  a, h1, h2       { color: #377BA8; }
  h1, h2          { font-family: 'Georgia', serif; margin: 0; }
  h1              { border-bottom: 2px solid #eee; }
  h2              { font-size: 1.2em; }

  .page           { margin: 2em auto; width: 35em; border: 5px solid #ccc;
                  padding: 0.8em; background: white; }
  .entries        { list-style: none; margin: 0; padding: 0; }
  .entries li     { margin: 0.8em 1.2em; }
  .entries li h2  { margin-left: -1em; }
  .add-entry      { font-size: 0.9em; border-bottom: 1px solid #ccc; }
  .add-entry dl   { font-weight: bold; }
  .metanav        { text-align: right; font-size: 0.8em; padding: 0.3em;
                    margin-bottom: 1em; background: #fafafa; }
  .flash          { background: #CEE5F5; padding: 0.5em;
                    border: 1px solid #AACBE2; }
  .error          { background: #F0D6D6; padding: 0.5em; }


Execute Application
=====================

::

  python run.py
