/* Adapted from https://github.com/gojko/hexgridwidget */

/*global $, document*/
$.fn.hexGridWidget = function (radius, rings, cssClass) {
	'use strict';
	// Defining columns from rings
	var columns = 2 * rings + 1;
	var rows = 2 * rings + 1;
	// Create canvas
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
					width: (1.5 * columns  +  0.5) * radius,
					height: (2 * rows  +  1) * height
				}),
				column, row, center,
				toPoint = function (dx, dy) {
					return Math.round(dx + center.x) + ',' + Math.round(dy + center.y);
				};
		// Create hexagons
		for (row = 0; row < rows; row++) {
			for (column = 0; column < columns; column++) {
				// offset coords to axial with 0,0,0 in center, see https://www.redblobgames.com/grids/hexagons/
				var x = column - rings
        var z = row - (column - ( column&1)) / 2 - (Math.ceil( (rings) / 2 ))
        var y = -x-z
				var ring = Math.max(Math.abs(x), Math.abs(y), Math.abs(z))
				if (ring <= rings) { // do not draw hexagons outside the centerhex
					center = {x:Math.round((1 + 1.5 * column) * radius), y: Math.round(height * (1 + row * 2 + (column % 2)))};
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
					.appendTo(svgParent).data({center:center, row:row, column:column, x: x, y: y, z: z}).on('click', hexClick).attr({'hex-x': x, 'hex-y': y, 'hex-z': z, 'hex-ring': ring});
				}
			}
		}
	});
};
