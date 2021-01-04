document.addEventListener("turbolinks:load", function() {
    if ($(".travel_calculator.index").length !== 0 ) {
        $("#path-type").click(function(){
            if (this.checked) {
                $(".land").hide();
                $(".sea").show();
            }
            else {
                $(".sea").hide();
                $(".land").show();
            }
        });
    }
});
