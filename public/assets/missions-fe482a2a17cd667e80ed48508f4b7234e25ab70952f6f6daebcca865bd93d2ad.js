document.addEventListener("turbolinks:load", function() {
    if ($(".missions.index").length !== 0 ) {
        $('#recipe-select').change(function(){
      		$selected_value=$('#recipe-select option:selected').text();
      		$('#recipe-title').text($selected_value);
      	});
        // Delete results check_box
        $("#delete_result").on("click", function(){
            $("#result").hide();
        });
    }
});
