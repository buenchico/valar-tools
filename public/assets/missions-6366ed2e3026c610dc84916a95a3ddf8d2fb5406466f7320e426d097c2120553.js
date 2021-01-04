document.addEventListener("turbolinks:load", function() {
    if ($(".missions.index").length !== 0 ) {
        // Delete results check_box
        $("#delete_result").on("click", function(){
            $("#result").hide();
        });
    }
});
