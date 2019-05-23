// Autocomplete

$(document).on('turbolinks:load', function() {
  $(".auto-source").autocomplete({
    source: $('.auto-source').data('autocomplete-source')
  });
});

// Accessing the clipboard

$(document).ready(function(){  
  var clipboard = new Clipboard('.clipboard-btn');
});

// Table sorting by column

$(document).ready(function() {
  $(function() {
    $("table.sortable").tablesorter();
  });
});

// Activating Best In Place

$(document).ready(function() {
  jQuery(".best_in_place").best_in_place();
});

// Highlighting Best In Place

$(document).ready(function() {
  $('.highlight_on_success').bind("ajax:success", function(){$(this).closest('tr').effect('highlight', {color:"#669966"} ); });
});