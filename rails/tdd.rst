=========================
Test-Driven Development
=========================

* テスト駆動開発(TDD)の定義は、アプリケーションを開発するときに最初にテストを作成し、次にコードを作成すること
* Red/Green/Refactor

  * テスト駆動で開発で最初に書く、失敗するテストのことを、一般的なテストツールでは「Red」と表現する(失敗時に表示が赤くなるツールが多いため)
  * 次に書く、テストにパスするコードのことを「Green」と表現する
  * 最後に、必要に応じてコードをリファクタリングしたり、フォームを変更したり、冗長なコードを削除したりする

* テスト駆動開発から派生した振舞駆動開発(Behavior-Driven Development, BDD)

  * アプリケーションの振る舞いをテストしながら実装する直観的な手法


結合テストを作成する
======================

::

  rails generate integration_test static_pages


結合テストの例
================

::

  vim spec/requests/static_pages_spec.rb

  describe "StaticPages" do

    let(:base_title) { "Ruby on Rails Tutorial Sample App" }

    describe "Home page" do

      it "should have the content 'Sample APP'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Sample App')
      end

      it "should have the right title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "#{base_title} | Home")
      end
    end
  end


結合テストを実行する
======================

::

  bundle exec rspec spec/requests/static_pages_spec.rb


Guardによるテストの自動化
===========================

* Guardはファイルシステムの変更を監視し、ファイルを変更すると自動的にテストを実行する


Sporkを使ったテストの高速化
=============================

* RSpecを実行するたびにRailsの環境全体を読み込み直す必要がある
* Sporkは環境を1回だけ読み込み、今後実行するテストのためのプロセスを管理する
* SporkはGuardと組み合わせるとさらに便利


Reference
===========

`Ruby on Rails チュートリアル <http://railstutorial.jp/chapters/static-pages#sec-first_tests>`__
