// Copy selected to clipboard
$(document).on('turbolinks:load', function () {

    $(function () {
        //Assign Click event to Button.
        $(".copy").click(function () {
            var message = "";

            //Loop through all checked CheckBoxes in GridView.
            $("input[type=checkbox]:visible:checked").each(function () {
                var row = $(this).closest("tr")[0];
                if ($(this).closest("tr")[0].id != "table_title") {
                  message += row.cells[2].textContent;
                  if (row.cells[3].textContent != "n/a") message += " (" + row.cells[3].textContent + ")";
                  if (row.cells[4].textContent != "n/a") message += ", en " + row.cells[4].textContent;
                  if (row.cells[5].textContent != "n/a") message += " [" + row.cells[5].textContent + "]";
                  message += " FUE: " + row.cells[1].textContent
                  message += "\n";
                };
            });

            // Create a dummy input to copy the string array inside it
            var dummy = document.createElement("textarea");
            // Add it to the document
            document.body.appendChild(dummy);
            // Output the array into it
            dummy.value = message;
            // Select it
            dummy.select();
            // Copy its contents
            document.execCommand("copy");
            // Remove it as its not needed anymore
            document.body.removeChild(dummy);
        });
    });
});

// Filters
$.fn.armyFilters = function(house){
    var value = $("#filtertext-" + house).val().toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    var column = $("#filterselect-" + house).children("option:selected").val();
    $("#army_list-" + house).filterTable(value, column);
    var countArmies = $('input[type="checkbox"]:visible').length - 1;
    $("#count-visible").html(countArmies);
}

// Recalculate stats
$.fn.recalculateStats = function(){
    var countArmies = $('input[type="checkbox"]:visible').length - 1;
    $("#count-visible").html(countArmies);

    var countStrenght = 0;
    $('.strenght:visible').each(function(){
        countStrenght += parseFloat($(this).text());  // Or this.innerHTML, this.innerText
    });
    $("#count-visible-strenght").html(countStrenght);
}


// Trigger filters
$(document).on('turbolinks:load', function(){
    var houses = ["Inactivo", "Master", "Humanos", "Insectoides", "Robots"];

    $.each( houses, function( k, house ) {

        $("#filterselect-" + house).on("change", function() {
            $.fn.armyFilters(house) // Why I need to remove the semicolons!!!!!
            $.fn.recalculateStats()
        });
        $("#filtertext-" + house).on("keyup", function() {
            $.fn.armyFilters(house)
            $.fn.recalculateStats()
        });
    });
});

// Trigger recalculate stats on changing tabs
$(document).on('turbolinks:load', function(){
    $('a[data-toggle="tab"]').on('shown.bs.tab', function () {
        $.fn.recalculateStats()
    })
});

// Refresh strength and change classes after best in place editing
$(document).on('turbolinks:load', function(){
    $('.best_in_place').bind("ajax:success", function(event, data) {
        // Change strenght
        var strenght = JSON.parse(data).army.strenght;
        var oldStrenght = $(this).closest("tr")[0].cells[1].textContent;

        $("#count-strenght").html(parseInt($("#count-visible-strenght").text()) + strenght - oldStrenght);

        $(this).closest("tr")[0].cells[1].textContent = strenght;

        $.fn.recalculateStats()

        // Change classes
        var status = JSON.parse(data).army.status;

        if (status !== "Aniquilado") {
            $(this).closest("tr").removeClass("destroyed")
            } else {
            $(this).closest("tr").addClass("destroyed")
        };
        if (status !== "Movilizado") {
            $(this).closest("tr").removeClass("mobilized")
            } else {
            $(this).closest("tr").addClass("mobilized")
        };
    })
});
