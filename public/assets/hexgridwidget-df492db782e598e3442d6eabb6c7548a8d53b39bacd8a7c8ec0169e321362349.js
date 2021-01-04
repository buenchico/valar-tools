/* Adapted from https://github.com/gojko/hexgridwidget */

/*global $, document*/
$.fn.hexGridWidget = function (radius, rings, cssClass, cssTextClass) {
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
				svgParent = $('#canvas').attr('tabindex', 1).appendTo(element).css({
					width: ((1.5 * columns  +  0.5) * radius) + 10,
					height: ((2 * rows  +  1) * height) + 10
				}),
				column, row, center,
				toPoint = function (dx, dy) {
					return Math.round(dx + center.x) + ',' + Math.round(dy + center.y);
				};

		// Create hexagons
		for (row = 0; row < rows; row++) {
			for (column = 0; column < columns; column++) {
				// offset coords to axial with 0,0,0 in center, see https://www.redblobgames.com/grids/hexagons/
				var q = column - rings
        var r = row - (column - ( column&1)) / 2 - (Math.ceil( (rings) / 2 ))

				var ring = Math.max(Math.abs(q), Math.abs(r), Math.abs(-q-r))
				if (ring <= rings) { // do not draw hexagons outside the centerhex
					center = {x: (Math.round((1 + 1.5 * column) * radius)) + 5, y: (Math.round(height * (1 + row * 2 + (column % 2)))) + 5 };
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
						tabindex:1,
						id: ''+q+'_'+r
					})
					.appendTo(svgParent).data({center:center, row:row, column:column, q: q, r: r}).on('click', hexClick).attr({'q': q, 'r': r, 'ring': ring});
				createSVG('text').attr({
					x: center.x, y: center.y + ( height * 0.9 ),
					'dominant-baseline': "middle", 'text-anchor': "middle",
					'class': cssTextClass,
					id: 'text_'+q+'_'+r
				}).appendTo(svgParent).html(q+','+r)
				}
			}
		}
	});
};

/*  */;
