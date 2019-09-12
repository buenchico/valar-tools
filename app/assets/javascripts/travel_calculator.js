$(document).on('turbolinks:load', function(){
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
});

$(document).on('turbolinks:load', function(){
    $("#delete_result").on("click", function(){
        $("#result").hide();
    });
});