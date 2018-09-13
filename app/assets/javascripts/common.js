$(document).ready(function(){
  $(".auto-source").autocomplete({
    source: $('.auto-source').data('autocomplete-source')
  });
});
  
$(document).ready(function(){  
  var clipboard = new Clipboard('.clipboard-btn');
});