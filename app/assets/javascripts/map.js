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

      map.setView( [500, 500], 1);

      var drawnItems = new L.FeatureGroup();
      map.addLayer(drawnItems);

      // Set the button title text for the polygon button
      L.drawLocal.draw.toolbar.buttons.polyline = 'Draw a sexy polygon!';

      var drawControl = new L.Control.Draw({
        draw: {
      		polyline: {
      		  //showLength: false,
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
          var distance = e.layer._latlngs[0]
          //console.log(this._getTooltipText())
          //console.log(distance.distanceTo(e.layer._latlngs[1]));
          //console.log(e.layer)
          console.log(e.layer)
      });

      // Saving as image

      // Custom image size
      var fullMap = {
	      width: 1000,
	      height: 1558.85850178359,
	      className: 'fullMap',
	      name: 'A custom A3 size'
      }

      var printer = L.easyPrint({
        		title: 'Exportar mapa',
        		sizeModes: ['Current',fullMap],
        		defaultSizeTitles: {Current: 'Visible'},
        		filename: 'myMap',
        		exportOnly: true,
        		hideControlContainer: true
      }).addTo(map);

      map.on('easyPrint-start', e => {
        $('#printing').removeClass('invisible')
      });

      map.on('easyPrint-finished', e => {
        $('#printing').addClass('invisible')
      });

    // Debugging options
    map.on('click', function(e){
      var coord = e.latlng;
      var lat = coord.lat;
      var lng = coord.lng;
      console.log("You clicked the map at latitude: " + lat + " and longitude: " + lng);
    });
  }
});
