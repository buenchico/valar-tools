document.addEventListener("turbolinks:load", function() {
    if ($(".map.index").length !== 0 || $(".map.full").length !== 0) {

      $(window).resize(function(){
        if ($('#map-container').hasClass('fs') ) {
          $('#mapid').height(window.innerHeight);
        } else {
          $('#mapid').height(window.innerHeight - $("#header").height() - 102);
        }
      });

      //var bounds = [[0,0], [1558.85850178359,1000]];
      var bounds = [[-13,1],[40,35]]
      //var bounds = [[0,0],[53,34]]

      var map = L.map('mapid', {
          crs: L.CRS.Simple,
          //drawControl: true,
          minZoom: 5,
          maxZoom: 7,
          maxBounds: bounds,
          maxBoundsViscosity: 1.0,
          fullscreenControl: true,
          fullscreenControlOptions: {
            position: 'topleft' }
      });

      var image = L.imageOverlay('/assets/mapa-westeros-dec24bc9399e708169f8deca898de8766322062bc281174771ff3a5bc0f5dd4a.jpg', bounds, {opacity: 1}).addTo(map);

      map.fitBounds(bounds);

      /* Debug grid

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

      */

      map.setView( [13.5, 18], 5);

      var drawnItems = new L.FeatureGroup();
      map.addLayer(drawnItems);

      // Set the button title text for the polygon button
      L.drawLocal.draw.toolbar.buttons.polyline = 'Dibuja tu ruta';
      L.drawLocal.draw.toolbar.buttons.marker = 'Añade tu marcador';

      // Set polyline colours array
      var colours = ['DarkRed','LimeGreen','SteelBlue','DarkMagenta','Gold','Black'];

      var drawControl = new L.Control.Draw({
        draw: {
      		polyline: {
      		  showLength: false,
      			shapeOptions: {
      				color: colours[0],
      				weight: 10
      			}
      		},
          polygon: false,
          rectangle: false,
          circle: false,
          marker: {icon: new L.DivIcon({
            iconAnchor: [10, 35], // point of the icon which will correspond to marker's location
            className: 'markerClass',
            html: 'A'
          })}
        },
        edit: {
          featureGroup: drawnItems,
          edit: false
        }
      });

      map.addControl(drawControl);

      map.on('draw:created', function (e) {
        console.log($("path").length % colours.length)
          var type = e.layerType,
              layer = e.layer;
          drawnItems.addLayer(layer);
          drawControl.setDrawingOptions({
            polyline: {
        		  showLength: false,
        			shapeOptions: {
        				color: colours[($("path").length -1) % colours.length],
        				weight: 10
        			}
            },
            marker: {
              icon: new L.DivIcon({
                iconAnchor: [10, 35], // point of the icon which will correspond to marker's location
                className: 'markerClass',
                html: String.fromCharCode(64 + Math.max($('.markerClass').length,1))
              })
            }
          });
          map.removeControl(drawControl);
          map.addControl(drawControl);
      });

      // Saving as image

      // Custom image size
      var fullMap = {
	      width: 1080,
	      height: 1700,
	      className: 'fullMap',
	      name: 'Mapa completo'
      }

      var printer = L.easyPrint({
        		title: 'Exportar mapa',
        		sizeModes: ['Current',fullMap],
        		defaultSizeTitles: {Current: 'Zona visible'},
        		filename: 'westeros',
        		exportOnly: true,
        		hideControlContainer: true
      }).addTo(map);

      map.on('easyPrint-start', e => {
        $('#printing').removeClass('invisible')
        if (e.event.target.className == 'fullMap') {
          map.setView( [13.5, 18], 5);
        }
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
