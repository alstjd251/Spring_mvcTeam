$(window).ready( function() {
<<<<<<< HEAD
   if($("body").height() < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 50 + "px"});
   }else {
      $("footer").css({top : 0, position : "relative"});
   }
=======
	if(($("header").height() + $("section").height()) < $(window).height()) {
		$("footer").css({ top :window.innerHeight - 250 + "px"});
	}else {
		$("footer").css({top : 0, position : "relative"});
	}
>>>>>>> branch 'dbTest_ms2' of https://github.com/alstjd251/Spring_mvcTeam.git
});
$(window).on("resize" , function() {
<<<<<<< HEAD
   if($("body").height() < $(window).height()) {
      $("footer").css({ top :window.innerHeight - 50 + "px"});
   } else {
      $("footer").css({top : 0 , position : "relative"});
   }
=======
	if(($("header").height() + $("section").height()) < $(window).height()) {
		$("footer").css({ top :window.innerHeight - 250 + "px"});
	} else {
		$("footer").css({top : 0 , position : "relative"});
	}
>>>>>>> branch 'dbTest_ms2' of https://github.com/alstjd251/Spring_mvcTeam.git
});