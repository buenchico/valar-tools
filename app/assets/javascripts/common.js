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
    $("table.sortable").tablesorter();
  });
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

    $("#ckbCheckAll").click(function () {
        $(".checkbox_selectable").prop('checked', $(this).prop('checked'));
    });
    
    $(".checkbox_selectable").change(function(){
        if (!$(this).prop("checked")){
            $("#ckbCheckAll").prop("checked",false);
        }
    });
    // Stop propagation make the code to work inside a table
    e.stopPropagation();
});

// Filter tables


$(document).on('turbolinks:load', function() {
  $("#filter").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#table_body tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});