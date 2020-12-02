$(function() {
  $('#color_field label input[type="checkbox"]').change(function() {
    var prop = $(this).prop('checked');
    if (prop) {
      $(this).parent().css({'background-color': 'rgb(24, 24, 24)'});
    } else {
      $(this).parent().css({'background-color': 'rgb(43, 43, 43)'});
    }
  });
  $('#my_brand_field label input[type="checkbox"]').change(function() {
    var prop = $(this).prop('checked');
    if (prop) {
      $(this).parent().css({'background-color': 'rgb(24, 24, 24)'});
    } else {
      $(this).parent().css({'background-color': 'rgb(43, 43, 43)'});
    }
  });
  $('#season_field label input[type="checkbox"]').change(function() {
    var prop = $(this).prop('checked');
    if (prop) {
      $(this).parent().css({'background-color': 'rgb(24, 24, 24)'});
    } else {
      $(this).parent().css({'background-color': 'rgb(43, 43, 43)'});
    }
  });
});
