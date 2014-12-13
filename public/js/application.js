$(document).ready(function() {

  $(".graphic-index").click(function() {
    // fade out, toggle background, then fade back in
    $(".graphic-index").fadeOut("slow");
    $(".graphic-index").css("visibility", "hidden");
    $(".graphic-index").delay(500).css("background-image", "url('../img/coin-hi.png')");
    $(".graphic-index").delay(500).css("visibility", "visible");
    $(".graphic-index").fadeIn("slow");
  })
    // $(".graphic-index").fadeToggle("slow", function () {
    //   $(this).css
    //   "../img/coin-hi.png")
    // $(".coin-graphic").fadeToggle().delay(500).fadeToggle("slow", function() {
      // $(".coin-graphic").css("display", "table-cell");
    // });
  // });

  // $(".coin-graphic").click(function() {
  //   $(".coin-graphic").reload();
  // });
});
