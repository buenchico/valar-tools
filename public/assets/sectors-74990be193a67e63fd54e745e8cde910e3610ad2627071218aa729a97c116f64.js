$(document).on('turbolinks:load', function () {
    if ($(".sectors.index").length !== 0 ) {

      $("#sectorModal").on("shown.bs.modal",function(){
         //will be executed everytime #item_modal is shown
         $(this).hide().show(); //hide first and then show here
      });

      $('.row_hover').on('click',
        function () {
          var hex = $(this).closest('tr').attr('id').slice(4,20);
          $('.hex-selected').removeClass('hex-selected');
          if ($(this).closest('tr').hasClass('bg-warning')) {
            $('.bg-warning').removeClass('bg-warning');
          } else {
            $('.bg-warning').removeClass('bg-warning');
            $('#' + hex).addClass('hex-selected').appendTo('#canvas');
            $('#row_' + hex).addClass('bg-warning');
          }
        });

      $('#hex').on('hexclick',
    		function (e) {
          $('.bg-warning').removeClass('bg-warning');
          if ($("#" + e.q + '_' + e.r).hasClass('hex-selected')) {
            $('.hex-selected').removeClass('hex-selected');
          } else {
            $('.hex-selected').removeClass('hex-selected');
            $("#" + e.q + '_' + e.r).addClass('hex-selected').appendTo('#canvas');
            $('#row_' + e.q + '_' + e.r).addClass('bg-warning');
          }
    		});
    }
});
