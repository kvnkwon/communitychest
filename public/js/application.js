$(document).ready(function() {
  $(".graphic-index").click(function() {
    $(".graphic-index").fadeOut(function(){
      $(this).css("background-image", "url('../img/coin-hi.png')");
      $(".graphic-index").fadeIn("slow");
    });
  });
});
