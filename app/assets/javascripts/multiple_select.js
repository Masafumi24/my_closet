$(function() {
  $('#form_id label input[type="checkbox"]').change(function() {
    var prop = $(this).prop('checked');
    if (prop) {
      $(this).parent().css({'background-color': 'rgb(24, 24, 24)'});
    } else {
      $(this).parent().css({'background-color': 'rgb(43, 43, 43)'});
    }
  });
});