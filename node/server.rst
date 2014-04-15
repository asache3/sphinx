========
Server
========


Web Server
=============

::

  //server.js

  var http = require('http');
  var settings = require('./settings');
  var server = http.createServer();
  server.on('request', function(req, res) {
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write('Hello World!');
      res.end();
  });
  server.listen(settings.port, settings.host);
  console.log("server listening ...");


Configuration
---------------

::

  //settings.js

  exports.port = 1337;
  exports.host = '192.168.33.72';


Routing
==========

::

  switch (req.url) {
      case '/about':
          msg = 'about this page';
          break;
      case '/profile':
          msg = 'about me';
          break;
      default:
          msg = 'wrong page';
          break;
  }
  res.write(msg);


Read HTML file
================

::

  var http = require('http'),
      fs = require('fs');

  fs.readFile(__dirname + '/public_html/hello.html', 'utf-8', function(err, data) {
      if(err) {
          res.writeHead(404, {'Content-Type': 'text/plain'});
          res.write('Not Found!');
          return res.end();
      }
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(data);
      res.end();
  });


ejs Template
==============

Install ejs
-------------

::

  npm install (-g) ejs


ejs Sample
------------

::

  <html>
  <h1><%= title %></h1> // エスケープする
  <p><%- content %></p> // エスケープしない
  <p><%= n %> views</p>
  </html>

  <form method="post">
  <input type="text" name="name">
  <input type="submit" value="Post!">
  <ul>
      <% for (var i = 0; i < posts.length; i++ ) { %>
      <li><%= posts[i] %></li>
      <% } %>
  </ul>


::

  var http = require('http'),
      fs = requre('fs'),
      ejs = require('ejs');

  var templaate = fs.readFileSync(__dirname + '/public_html/hello.ejs', 'utf-8');
  var n = 0;
  server.on('request', function(req, res) {
      n++;
      var data = ejs.render(template, {
          title: "hello",
          content: "<strong>World!</strong>",
          n: n
      });
  });
