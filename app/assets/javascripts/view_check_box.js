$(function () {
  $('.form_area_content_select').click(function(){
    let target = $(this).children('#form_id')
    target.slideToggle();
  });
})