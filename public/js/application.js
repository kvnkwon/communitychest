$(document).ready(function() {
  Mousetrap.bind('n', function() {
    $.ajax({
      url: "/random_coin",
      type: "GET",
      dataType: "json"
    }).done(function(response){
      console.log(response);
        $(".graphic-index").fadeOut(function(){
        $(this).css("background-image", "url('../img/coin-hi.png')");
        $("#coin-advice").css("visibility", "visible");
        $("#coin-advice").html('"' + response.content + '"');
        $(".graphic-index").fadeIn("slow");
      });
    });
  }, 'keyup');
});
