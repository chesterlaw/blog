$(document).ready(function() {
  $('.color-chooser__color-choice').on('click', function() {
    var color = $(this).css('background-color');
    $(this).siblings('.color-chooser__chosen-color').css('color', color);
  });
});
