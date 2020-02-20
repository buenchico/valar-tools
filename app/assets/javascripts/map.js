document.addEventListener("turbolinks:load", function() {
    if ($(".map.index").length !== 0 ) {
      var bounds = [[0,0], [1558.85850178359,1000]];
      
      var map = L.map('mapid', {
          crs: L.CRS.Simple,
          //drawControl: true,
          minZoom: 0,
          maxZoom: 3,
          maxBounds: bounds,
          maxBoundsViscosity: 1.0
      });
      
      var image = L.imageOverlay('/assets/mapa-westeros-dec24bc9399e708169f8deca898de8766322062bc281174771ff3a5bc0f5dd4a.jpg', bounds, {opacity: 0.5}).addTo(map);
      
      map.fitBounds(bounds);
      
      // Set the button title text for the polygon button
      L.drawLocal.draw.toolbar.buttons.polyline = 'Draw a sexy polygon!';
      
      L.GridLayer.GridDebug = L.GridLayer.extend({
        createTile: function (coords) {
          const tile = document.createElement('div');
          tile.style.outline = '1px solid green';
          tile.style.fontWeight = 'bold';
          tile.style.fontSize = '14pt';
          tile.innerHTML = [coords.z, coords.x, coords.y].join('/');
          return tile;
        },
      });
      
      L.gridLayer.gridDebug = function (opts) {
        return new L.GridLayer.GridDebug(opts);
      };
      
      map.addLayer(L.gridLayer.gridDebug());
      
      var sol = L.latLng([ 0, 0 ]);
      var sol2 = L.latLng([ 1558, 1000 ]);
      L.marker(sol).addTo(map);
      L.marker(sol2).addTo(map);
      map.setView( [500, 500], 1);
      
      
      var latlngs = [
          [45.51, 100],
          [37.77, 150],
          [34.04, 200]
      ];
      var polyline = L.polyline(latlngs, {color: 'red'})
          .addTo(map);
      
      var drawnItems = new L.FeatureGroup();
      map.addLayer(drawnItems);
      
      var drawControl = new L.Control.Draw({
        draw: {
      		polyline: {
      			shapeOptions: {
      				color: '#ff0000',
      				weight: 10
      			}
      		},
          polygon: false,
          rectangle: false,
          circle: false,
          marker: false
        },
        edit: {
          featureGroup: drawnItems,
          edit: false
        }
      });
      map.addControl(drawControl);
      
      map.on('draw:created', function (e) {
          var type = e.layerType,
              layer = e.layer;
          drawnItems.addLayer(layer);
      });
      
      var printer = L.easyPrint({
        		sizeModes: ['Current'],
        		filename: 'myMap',
        		exportOnly: true,
        		hideControlContainer: false
      }).addTo(map);
      
      map.on('easyPrint-start', e => {
        console.log(Date(Date.now()));
      });
      
      map.on('easyPrint-finished', e => {
        console.log(Date(Date.now()));
      });
    }
});