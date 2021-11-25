$(window).on("load", function() {
   if(($("header").height() + $("section").height()) < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 150 + "px"});
   }else {
      $("footer").css({top : $("header").height() + $("section").height() + "px"});
   }
});
$(window).on("resize" , function() {
   if(($("header").height() + $("section").height()) < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 150 + "px"});
   } else {
      $("footer").css({top :  $("header").height() + $("section").height() + "px"});
   }
});