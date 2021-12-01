$("section").on("load", function() {
   if(($("header").height() + $("section").height()) < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 150 + "px"});
   }else {
      $("footer").css({top : $("header").height() + $("section").height() + "px"});
   }
});
$("section").on("resize" , function() {
   if(($("header").height() + $("section").height()) < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 150 + "px"});
   } else {
      $("footer").css({top :  $("header").height() + $("section").height() + "px"});
   }
});