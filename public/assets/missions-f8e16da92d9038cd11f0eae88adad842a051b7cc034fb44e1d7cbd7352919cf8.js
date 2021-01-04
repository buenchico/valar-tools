document.addEventListener("turbolinks:load", function() {
    if ($(".missions.index").length !== 0 ) {
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

        $("#delete_result").on("click", function(){
          console.log("missions222")
            $("#result").hide();
        });
    }
});
