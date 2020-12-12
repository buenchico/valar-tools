/* From https://github.com/gojko/hexgridwidget */

/*global $, document*/
$.fn.hexGrid = function (radius, cssClass, rings) {
	'use strict';
	var createSVG = function (tag) {
		return $(document.createElementNS('http://www.w3.org/2000/svg', tag || 'svg'));
	};
	return $(this).each(function () {
		var element = $(this),
				hexClick = function () {
					var hex = $(this);
					element.trigger($.Event('hexclick', hex.data()));
				},
				height = Math.sqrt(3) / 2 * radius,
				svgParent = createSVG('svg').attr('tabindex', 1).appendTo(element).css({
					width: (1.5 * ( 2 * rings + 1 )  +  0.5) * radius,
					height: (2 * ( 2 * rings + 1 )  +  1) * height
				}),
				ring, column, row, center,
				toPoint = function (dx, dy) {
					return Math.round(dx + center.x) + ',' + Math.round(dy + center.y);
				};
      // Draw the center
      center = {x: ((1.5 * ( 2 * rings + 1 )  +  0.5) * radius) / 2, y: Math.round(height * (1 + rings * 2 + (rings % 2)))};
      createSVG('polygon').attr({
        points: [
          toPoint(-1 * radius / 2, -1 * height),
          toPoint(radius / 2, -1 * height),
          toPoint(radius, 0),
          toPoint(radius / 2, height),
          toPoint(-1 * radius / 2, height),
          toPoint(-1 * radius, 0)
        ].join(' '),
        'class':cssClass,
        tabindex:1
      })
      .appendTo(svgParent).data({center:center, x: 0, y: 0, z: 0}).on('click', hexClick).attr({'x': x, 'y': y, 'z': z});

    for (ring = rings; ring > 0; ring--) {
      for (hex = 0; hex < 6 * ring; hex++) {
				center = {x:Math.round((1 + 1.5 * hex) * radius), y: Math.round(height * (1 + ring * 2 + (ring % 2)))};
				console.log(ring + ',' + hex + '//' + center.x + ',' + center.y);
				createSVG('polygon').attr({
					points: [
						toPoint(-1 * radius / 2, -1 * height),
						toPoint(radius / 2, -1 * height),
						toPoint(radius, 0),
						toPoint(radius / 2, height),
						toPoint(-1 * radius / 2, height),
						toPoint(-1 * radius, 0)
					].join(' '),
					'class':cssClass,
					tabindex:1
				})
				.appendTo(svgParent).data({center:center, row:row, column:column, x: x, y: y, z: z}).on('click', hexClick).attr({'hex-row': row, 'hex-column': column});
      }
    }
	});
};
