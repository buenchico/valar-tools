$(document).on('turbolinks:load', function(){
    $("#delete_result").on("click", function(){
        $("#result").hide();
    });
});

$(document).on('turbolinks:load', function(){
	$('#recipe-select').change(function(){
		$selected_value=$('#recipe-select option:selected').text();
		$('#recipe-title').text($selected_value);
	});
});
