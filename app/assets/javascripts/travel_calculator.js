$(document).ready(function(){
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

$(document).ready(function(){
    $("#delete_result").on("click", function(){
        $("#result").hide();
    });
});