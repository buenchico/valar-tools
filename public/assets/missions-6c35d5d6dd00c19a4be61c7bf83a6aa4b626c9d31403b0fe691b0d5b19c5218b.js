document.addEventListener("turbolinks:load", function() {
  console.log("test2");
    $("#delete_result").on("click", function(){
              console.log("test2222");
        $("#result").hide();
    });
});

$(document).on('turbolinks:load', function(){
	$('#recipe-select').change(function(){
		$selected_value=$('#recipe-select option:selected').text();
		$('#recipe-title').text($selected_value);
	});
});
