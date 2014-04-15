=======
Basic
=======

棒グラフを描く
================

::

  d3.select("body") // ページのbody要素を選択し、そこへ新たな要素を追加できるようにしている
    .append("div")
    .attr("class", "chart")
    .selectAll("div.line") // 空のセレクション(要素を持たないが、データを受け付けるためのdataメソッドが定義された配列)が作成される
    .data(data.cash) // 空のセレクションとデータセットの各要素を結びつける(データポイントの数と同じ数だけの要素を持った配列のセレクションが作成される)
    .enter() // これから作成する新たな要素すべてに対応するデータを含む、配列のセレクション(データは存在するが、まだページ上に項目を持たないすべての要素)を返す
    .append("div")
    .attr("class","line") // クラスがlineのdiv要素をデータの要素ごとに追加していく

  d3.selectAll("div.line")
    .append("div")
    .attr("class","label")
    .text(function(d){return d.name})

  d3.selectAll("div.line")
    .append("div")
    .attr("class", "bar")
    .style("width", function(d){return d.count/100 + "px"})
    .text(function(d){return Math.round(d.count)});


散布図を描く
==============

::

  var margin = 50,
    width = 700,
    height = 300;

  d3.select("body")
    .append("svg") // すべてのSVG要素はsvgタグの内部に置かれ、属性としてwidthとheightを取る
    .attr("width", width)
    .attr("height", height)
    .selectAll("circle")
    .data(data)
    .enter()
    .append("circle");

  var x_extent = d3.extent(data, function(d){return d.collision_with_injury}); // 引数の最小値と最大値を返す
  var x_scale = d3.scale.linear()
        .range([margin,width-margin])
        .domain(x_extent);

  var y_extent = d3.extent(data, function(d){return d.dist_between_fail});
  var y_scale = d3.scale.linear()
        .range([height-margin, margin])
        .domain(y_extent);

  d3.selectAll("circle")
    .attr("cx", function(d){return x_scale(d.collision_with_injury)})
    .attr("cy", function(d){return y_scale(d.dist_between_fail)});

  d3.selectAll("circle")
    .attr("r", 5);


座標軸を描く
==============

::

  var x_axis = d3.svg.axis().scale(x_scale);

  d3.select("svg")
    .append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + (height-margin) + ")") // translateは平行移動を行う座標変換
    .call(x_axis); // 座標軸を実際に描く

  var y_axis = d3.svg.axis().scale(y_scale).orient("left"); // orientメソッドを使って軸の向きを設定する

  d3.select("svg")
    .append("g")
    .attr("class", "y axis")
    .attr("transform", "translate(" + margin + ", 0)")
    .call(y_axis);

  d3.select(".x.axis")
    .append("text")
    .text("collisions with injury (per million miles)") // SVGのtext要素で座標軸にタイトルを付ける
    .attr("x", (width / 2) - margin)
    .attr("y", margin / 1.5);

  d3.select(".y.axis")
    .append("text")
    .text("mean distance between failure (miles)")
    .attr("transform", "rotate (-90, -43, 0) translate(-280)");


タイムスケールを作成する
==========================

::

  var time_extent = d3.extent(
        data.times_square.concat(data.grand_central),
        function(d){return d.time}
      );

  var time_scale = d3.time.scale()
        .domain(time_extent)
        .range([margin, width]);

  var time_axis = d3.svg.axis()
        .scale(time_scale);

  d3.select("svg")
    .append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(time_axis);


パスを追加する
================

::

  var line = d3.svg.line() // 引数としてデータセットを取り、SVGパス要素を出力する関数を生成する
       .x(function(d){return time_scale(d.time)})
       .y(function(d){return count_scale(d.count)});

  d3.select("svg")
    .append("path")
    .attr("d", line(data.times_square))
    .attr("class", "times_square");

  d3.select("svg")
    .append("path")
    .attr("d", line(data.grand_central))
    .attr("class", "grand_central"); 


イベントハンドラを追加する
============================

::

  d3.selectAll('.key_line')
    .on('click', get_timeseries_data)

  function get_timeseries_data(d,i){
    // get the id of the current element
    var id = d.line_id
    // see if we have an associated time series
    var ts = d3.select('#'+id)
    // toggle
    if (ts.empty()){ // セレクションに何らかの要素が実際に含まれているかどうかをテストする
      d3.json('data/subway_wait.json', function(data){
        filtered_data = data.filter(function(d){return d.line_id === id}) // 現在の要素のIDと等しいIDを持つデータを選び出す
        draw_timeseries(filtered_data, id)
    })
    } else {
      ts.remove() // 要素がページ上にすでに存在した場合には、削除する
    }
  }


トランジッション
==================

::

  g.selectAll('circle')
    .on('mouseover', function(d){
      d3.select(this)
        .transition().attr('r', 9)
    })
    .on('mouseout', function(d,i){
      if (i !== data.length-1) {
        d3.select(this).transition().attr('r', 5)
      }
    })

  g.selectAll('circle')
    .on('mouseover.tooltip', function(d){
      d3.select("text." + d.line_id).remove() // 新しくツールチップを追加する前に、すでに存在するツールチップをすべて削除する
        d3.select('#chart')
          .append('text')
          .text(d.late_percent + "%")
          .attr('x', time_scale(d.time) + 10)
          .attr('y', percent_scale(d.late_percent) - 10)
          .attr('class', d.line_id)
    })
    .on('mouseout.tooltip', function(d){
      d3.select("text." + d.line_id)
        .transition()
        .duration(500)
        .style('opacity',0)
        .attr('transform','translate(10, -10)')
        .remove() // トランジッションに対して呼ばれた場合、トランジッションの終了後に実行される
    })


アニメーション
================

::

  g.selectAll('circle')
    .transition()
    .delay(function(d, i) { return i / data.length * enter_duration; }) // ミリ秒単位で指定された時間だけトランジションを遅らせる
    .attr('r', 5)
    .each('end',function(d,i){ // トランジションの中の各要素ごとに呼び出され、第1引数として"start"か"end"のいずれかを取る
      if (i === data.length-1){
          add_label(this,d)
      }
    })


レイアウト
============

* forceレイアウトは、力指向(force-directed)アルゴリズムを適用して各ノードの位置を決める

  * 各ノードは他のすべてのノードから反発力を受ける一方で、ノードを互いに接続しているエッジによって制約されている

::

  var force = d3.layout.force()
     .charge(-120)
     .linkDistance(30)
     .size([width, height])
     .nodes(data.nodes)
     .links(data.links)
     .start();

  force.on("tick", function() {
    link.attr("x1", function(d) { return d.source.x; })
      .attr("y1", function(d) { return d.source.y; })
      .attr("x2", function(d) { return d.target.x; })
      .attr("y2", function(d) { return d.target.y; })
    node.attr("cx", function(d) { return d.x; })
      .attr("cy", function(d) { return d.y; });
  });

  node.call(force.drag);
