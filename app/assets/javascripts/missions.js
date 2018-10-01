$(document).ready(function(){
    $("#delete_result").on("click", function(){
        $("#result").hide();
    });
});

$(document).ready(function(){
	$('#recipe-select').change(function(){
		$selected_value=$('#recipe-select option:selected').text();
		$('#recipe-title').text($selected_value);
	});
});