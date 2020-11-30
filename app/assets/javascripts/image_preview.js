$(function () {
  $('.form_area_content_image_box_btn_none').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#img_prev").attr('src', e.target.result);
    }
    console.log('test');
    reader.readAsDataURL(e.target.files[0]);
  });
});