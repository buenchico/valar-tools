document.addEventListener("turbolinks:load", function() {
    $("#path-type").click(function(){
        console.log("click")
        if (this.checked) {
            $(".land").hide();
            $(".sea").show();
        }
        else {
            $(".sea").hide();
            $(".land").show();
        }
    });
});

document.addEventListener("turbolinks:load", function() {
    $("#delete_result").on("click", function(){
        $("#result").hide();
    });
});
