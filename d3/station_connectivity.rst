======================
station_connectivity
======================

::

  <!DOCTYPE html>
  <html>
  <head>
      <meta charset="utf-8">
      <script type="text/javascript" src="d3.js"></script>
      <style>
      circle {
          stroke:black;
          stroke-width:1px;
          fill:MediumSeaGreen;
          opacity:0.5;
      }
      </style>
  </head>
  <body>
      <script>
          d3.json('data/stations_graph.json', function(json){
              
              var width = 1500,
                  height = 1500;
              
              var svg = d3.select('body')
                .append('svg')
                  .attr('width', width)
                  .attr('height', height);

              // draw the graph nodes
              var node = svg.selectAll("circle.node")
                .data(json.nodes)
                .enter()
                .append("circle")
                  .attr("class", "node")
                  .attr("r", 12);
              
              // draw the graph edges
              var link = svg.selectAll("line.link")
                .data(json.links)
                .enter().append("line")
                  .style('stroke','black');
              
              // create the layout
              var force = d3.layout.force()
                  .charge(-120)
                  .linkDistance(30)
                  .size([width, height])
                  .nodes(json.nodes)
                  .links(json.links)
                  .start();
              
              // define what to do one each tick of the animation
              force.on("tick", function() {
                  link.attr("x1", function(d) { return d.source.x; })
                      .attr("y1", function(d) { return d.source.y; })
                      .attr("x2", function(d) { return d.target.x; })
                      .attr("y2", function(d) { return d.target.y; });
                  
                  node.attr("cx", function(d) { return d.x; })
                      .attr("cy", function(d) { return d.y; });
                  });

              // bind the drag interaction to the nodes
              node.call(force.drag);
          });
      </script>
  </body>
  </html>
