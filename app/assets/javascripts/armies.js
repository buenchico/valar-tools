// Copy selected to clipboard
$(document).on('turbolinks:load', function(){
    $(function () {
        //Assign Click event to Button.
        $("#copy").click(function () {
            var message = "";
 
            //Loop through all checked CheckBoxes in GridView.
            $("#army_list input[type=checkbox]:checked").each(function () {
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
$(document).on('turbolinks:load', function(){
    $.fn.armyFilters = function(){ 
        var value = $("#filtertext").val().toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
        var column = $("#filterselect").children("option:selected").val();
        $("#army_list").filterTable(value, column);
        var countArmies = $('input[type="checkbox"]:visible').length - 1;
        $("#count-visible").html(countArmies);
    }
    $("#filterselect").on("change", function() {
        $.fn.armyFilters();
    });
    $("#filtertext").on("keyup", function() {
        $.fn.armyFilters();
    });    
});