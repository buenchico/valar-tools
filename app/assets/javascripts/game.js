document.addEventListener("turbolinks:load", function() {
    if ($(".game.index").length !== 0 ) {
        $("#cancel").on("click", function(){
            $("#newGameForm").hide();
            $('#newGameBtn').removeClass('d-none');
        });
        $("#newGameBtn").on("click", function(){
            $('#newGameBtn').addClass('d-none')
            $('#newGameForm').slideDown(350);
        });
    }
});


$('#newGameBtn').addClass('d-none')
$('#newGameForm').slideDown(350);
