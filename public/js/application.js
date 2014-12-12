$(document).ready(function() {

  $(".graphic-index").click(function() {
    $(".graphic-index").fadeOut("slow");
    $(".coin-graphic").delay(400).fadeIn("slow");
  });

  $(".coin-graphic").click(function() {
    $(".coin-graphic").reload();
  });

});
