$(window).ready( function() {
   if($("body").height() < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 250 + "px"});
   }else {
      $("footer").css({top : 0, position : "relative"});
   }
});

$(window).on("resize" , function() {
   if($("body").height() < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 250 + "px"});
   } else {
      $("footer").css({top : 0 , position : "relative"});
   }
});