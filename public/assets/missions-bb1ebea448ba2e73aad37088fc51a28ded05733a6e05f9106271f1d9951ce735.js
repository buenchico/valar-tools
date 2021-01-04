document.addEventListener("turbolinks:load", function() {
    if ($(".missions.index").length !== 0 ) {
      console.log("missions!!!")
      $("#delete_result").on("click", function(){
          $("#result").hide();
      });
    }
});
