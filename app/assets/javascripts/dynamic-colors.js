$(document).ready(function() {
  // Run main function below only on dynamic-colors page.
  if ($('body').hasClass('dynamic-colors')) { main(); }

  function main() {
    $('.color-chooser__color-choice').on('click', function() {
      var color = $(this).css('background-color');
      $(this).siblings('.color-chooser__chosen-color').css('color', color);
    });
  };
});
