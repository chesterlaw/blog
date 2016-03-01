$(document).ready(function() {
  $('.color-choice').on('click', function() {
    var color = $(this).css('background-color');
    $(this).parents('.category').children('h1').css('color', color);
  });
});