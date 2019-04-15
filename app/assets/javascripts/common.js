// Autocomplete

$(document).ready(function(){
  $(".auto-source").autocomplete({
    source: $('.auto-source').data('autocomplete-source')
  });
});

$(document).ready(function(){  
  var clipboard = new Clipboard('.clipboard-btn');
});

// Table sorting by column

var table = $('table');

$(document).ready(function() {

    $('table.sortable th').click(function(){
        var table = $(this).parents('table').eq(0);
        var column_index = get_column_index(this);
        var rows = table.find('tbody tr').toArray().sort(comparer(column_index));
        this.asc = !this.asc;
        if (!this.asc){rows = rows.reverse()};
        for (var i = 0; i < rows.length; i++){table.append(rows[i])};
    })

});

function comparer(index) {
    return function(a, b) {
        var valA = getCellValue(a, index), valB = getCellValue(b, index);
        return isNumber(valA) && isNumber(valB) ? valA - valB : valA.localeCompare(valB);
    }
}
function getCellValue(row, index){ return $(row).children('td').eq(index).html() };

function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

function get_column_index(element) {
    var clickedEl = $(element);
    var myCol = clickedEl.closest("th").index();
    var myRow = clickedEl.closest("tr").index();
    var rowspans = $("th[rowspan]");
    rowspans.each(function () {
        var rs = $(this);
        var rsIndex = rs.closest("tr").index();
        var rsQuantity = parseInt(rs.attr("rowspan"));
        if (myRow > rsIndex && myRow <= rsIndex + rsQuantity - 1) {
            myCol++;
        }
    });
    // alert('Row: ' + myRow + ', Column: ' + myCol);
    return myCol;
};

$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
});

$(document).ready(function() {
  $('.highlight_on_success').bind("ajax:success", function(){$(this).closest('tr').effect('highlight', {color:"#669966"} ); });
});