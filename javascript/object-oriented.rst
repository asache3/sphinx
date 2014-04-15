==================
オブジェクト指向
==================

JavaScriptにおけるオブジェクト指向
====================================

* インスタンス化/インスタンスという概念はあるが、クラスがなく「プロトタイプ(雛形)」という概念だけがある
* プロトタイプベースのオブジェクト指向

  * プロトタイプとは「あるオブジェクトの元となるオブジェクト」のこと

* 関数(Functionオブジェクト)にクラスとしての役割を与えている
* thisキーワードに対して変数を指定することで、インスタンスのプロパティを設定できる

  * 値が関数オブジェクトであるプロパティがメソッドと見なされる

::

  var Member = function(firstName, lastName){
    this.firstName = firstName;
    this.lastName = lastName;
    this.getName = function(){
      return this.lastName + ' ' + this.firstName;
    }
  }

  var mem = new Member('祥寛', '山田');
  document.writeln(mem.getName());


動的にメソッドを追加する
--------------------------

* 同一のクラスをもとに生成されたインスタンスであっても、それぞれが持つメンバは同一であるとは限らない

::

  var Member = function(firstName, lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  };

  var mem = new Member('祥寛', '山田');
  mem.getName = function(){
    return this.lastName + ' ' + this.firstName;
  }
  
  document.writeln(mem.getName());


prototypeプロパティ
=====================

* prototypeプロパティに格納されたメンバは、そのクラス(コンストラクタ)をもとに生成されたすべてのインスタンスから利用できる
* オブジェクトをインスタンス化した場合、インスタンスは基となるオブジェクトに属するprototypeオブジェクトに対して、暗黙的な参照を持つことになる

::

  var Member = function(firstname, lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  }

  Member.prototype.getName = function(){
    return this.lastName + ' ' + this.firstName;
  };

  var mem = new Member('祥寛', '山田');
  document.writeln(mem.getName());


プロトタイプオブジェクトを利用することの2つの利点
===================================================

1. メモリの使用量を節減できる

JavaScriptではオブジェクトのメンバが呼び出されたときに、

* インスタンス側に要求されたメンバが存在しないかを確認
* 存在しない場合は、暗黙の参照をたどってプロトタイプオブジェクトを検索

2. メンバの追加や変更をインスタンスがリアルタイムに認識できる


プロトタイプチェーン
======================

* プロトタイプにインスタンスを設定することで、インスタンス同士を「暗黙の参照」でもって連結し、互いに継承関係を持たせることができる
* プロトタイプの終端には必ずObject.prototypeがある
* インスタンスが生成された時点で固定され、その後の変更に関わらず保存される

::

  var Animal = function() {}

  Animal.prototype = {
    walk : function() { document.writeln('トコトコ...');}
  }

  var Dog = function() {};
  Dog.prototype = new Animal();

  Dog.prototype.bark = function() { document.writeln('ワンワン!'); }

  var d = new Dog();
  d.walk();
  d.bark();


名前空間を作成する
====================

* 名前空間とは、クラスをまとめる箱のようなもの
* 名前空間を定義するには、空のコンストラクタを定義するだけ

::

  var Wings = function() {};

  Wings.Member = function(firstName, lastName){
    this.firstName = firstName;
    this.lastName = lastName;
  }
