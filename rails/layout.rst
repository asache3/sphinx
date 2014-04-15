========
Layout
========

リンクを作成する
==================

::

  <%= link_to "Sign up now!", '#', class: "btn btn-large btn-primary" %>
  <%= link_to image_tag("rails.png", alt: "Rails"), 'http://rubyonrails.org/' %>


HTML5 shim
============

::

  <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->


Bootstrapを追加する
=====================

::

  source 'https://rubygems.org'

  gem 'rails', '3.2.14'
  gem 'bootstrap-sass', '2.1'


パーシャル
============

::

  <%= render 'layouts/shim' %>
  # app/views/layouts/_shim.html.erbを挿入する


アセットパイプライン
======================

* 複数のJavaScriptとCSSをそれぞれ1つのファイルに連結する

  * ブラウザからのリクエスト数を減らす

* JavaScriptとCSSを圧縮してサイズを減らす

  * 必要ない空白を削除したり、変数名を1文字にしたりする

* アセットファイル名にハッシュ値(MD5)を付加する

  * ブラウザがファイルのキャッシュ/再読み込みを正しく行える

* ERB、CoffeeScript、SCSSなどを使って効率的で柔軟な方法で記載できる


Sass
======

* CSSに変数や計算式を使ったプログラミング風の書き方を加えた.scssファイルを変換(コンパイル)してCSSファイルを作成する

* class

::

  .center {
    text-align: center;
  }

  .center h1 {
    margin-bottom: 10px;
  }

  ----------

  .center {
    text-align: center;
    h1 {
      margin-bottom: 10px;
    }  
  }

* id

::

  #logo {
    float: left;
    margin-right: 10px;
    font-size: 1.7em;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: -1px;
    padding-top: 9px;
    font-weight: bold;
    line-height: 1;
  }

  #logo:hover {
    color: #fff;
    text-decoration: none;
  }

  ----------

  #logo {
    float: left;
    margin-right: 10px;
    font-size: 1.7em;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: -1px;
    padding-top: 9px;
    font-weight: bold;
    line-height: 1;
    &:hover {
      color: white;
      text-decoration: none;
    }
  }


ルートマッピング
==================

::

  SampleApp::Application.routes.draw do
    root to: 'static_pages#home'

    match '/help',    to: 'static_pages#help'
    match '/about',   to: 'static_pages#about'
    match '/contact', to: 'static_pages#contact'  

  end
