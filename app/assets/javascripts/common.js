// Autocomplete

$(document).on('turbolinks:load', function() {
  $(".auto-source").autocomplete({
    source: $('.auto-source').data('autocomplete-source')
  });
});

// Accessing the clipboard

$(document).on('turbolinks:load', function() {
  var clipboard = new Clipboard('.clipboard-btn');
});

// Table sorting by column

$(document).on('turbolinks:load', function() {
  $(function() {
    $("table.sortable").tablesorter({
      imgAttr: 'title' // image attribute used by "image" parser
    });
  });
});

$.tablesorter.addParser({
  id: 'font-awesome',
  is: function(s) {
    return false;
  },
  format: function(s, table, cell) {
    var $cell = $(cell);
    return $cell.html() || s;
  },
  type: 'text'
});

// Activating Best In Place

$(document).on('turbolinks:load', function() {
  jQuery(".best_in_place").best_in_place();
});

// Highlighting Best In Place

$(document).on('turbolinks:load', function() {
  $('.highlight_on_success').bind("ajax:success", function(){$(this).closest('tr').effect('highlight', {color:"#669966"} ); });
});

// Select all checkboxes
$(document).on('turbolinks:load', function(e) {
    var $checkboxes = $('input[type="checkbox"]');

    $checkboxes.change(function(){
        var countCheckedCheckboxes = $checkboxes.filter(':checked').length;
        if (countCheckedCheckboxes == 0 ) $(".mass_edit_button").prop( "disabled", true );
        if (countCheckedCheckboxes != 0) $(".mass_edit_button").prop( "disabled", false );
    });

    // :visible only select visible rows

    $(".ckbCheckAll").click(function () {
        $(".checkbox_selectable:visible").prop('checked', $(this).prop('checked'));
    });

    $(".checkbox_selectable").change(function(){
        if (!$(this).prop("checked")){
            $(".ckbCheckAll").prop("checked",false);
        }
    });
    // Stop propagation make the code to work inside a table
    e.stopPropagation();
});

// Filter tables

(function($) {
	$.fn.filterTable = function(filter, columnname) {
		var index = null;
		this.find("thead > tr:first > th").each(function(i) {
			if ($.trim($(this).text()) == columnname) {
				index = i;
				return false;
			}
		});
		if (index == null)
			throw ("filter columnname: " + columnname + " not found");

		this.find("tbody:first > tr").each(function() {
		    var row = $(this);
		    if (filter == "") {
		        row.show();
		    }
		    else {
		        var cellText = row.find("td:eq(" + index + ")").find('option:selected').text();
		        if (cellText == "") {
		            cellText = $(row.find(("td:eq(" + index + ")"))).text().toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
		        }
		        if (cellText.indexOf(filter) == -1) {
		            row.hide();
		        }
		        else {
		            row.show();
		        }
		    }
		});
		return this;
	};
})(jQuery);

// $(document).on('turbolinks:load', function() {
//   $("#filter").on("keyup", function() {
//     var value = $(this).val().toLowerCase();
//     $("#table_body tr").filter(function() {
//       $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
//     });
//   });
// });
