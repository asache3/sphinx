=========
Example
=========

::

  <!DOCTYPE html>
  <html lang="ja">
    <head>
      <meta charset="utf-8">
      <title>Three.jsの練習</title>
    </head>
    <body>
      <div id="stage"</div>
      <script src="three.min.js"></script>
      <script>
        (function() {

          var width = 500;
          var height = 300;

          // scene
          var scene = new THREE.Scene();

          // mesh
          var geometry = new THREE.CubeGeometry(50,50,50);
          var material = new THREE.MeshLambertMaterial({ color: 0xff0000 });
          var cube = new THREE.Mesh(geometry, material);
          cube.position.set(0,0,0);
          scene.add(cube);

          // light
          var light = new THREE.DirectionalLight(0xffffff, 1);
          light.position.set(0, 100, 30);
          scene.add(light);
          var ambient = new THREE.AmbientLight(0x550000);
          scene.add(ambient);

          // camera
          var camera = new THREE.PerspectiveCamera(45, width / height, 1, 1000);
          camera.position.set(200,100,500);
          camera.lookAt(cube.position);
          //camera.position = new THREE.Vector3(0,0,0)

          // rendering
          var renderer = new THREE.WebGLRenderer();
          renderer.setSize(width, height);
          renderer.setClearColor(0xeeeeee, 1);
          document.getElementById('stage').appendChild(renderer.domElement);
          renderer.render(scene, camera);

        })();
      </script>
    </body>
  </html>
