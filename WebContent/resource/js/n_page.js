$(window).ready( function() {
	if(($("header").height() + $("section").height()) < $(window).height()) {
		$("footer").css({ top :window.innerHeight - 250 + "px"});
	}else {
		$("footer").css({top : 0, position : "relative"});
	}
});
$(window).on("resize" , function() {
	if(($("header").height() + $("section").height()) < $(window).height()) {
		$("footer").css({ top :window.innerHeight - 250 + "px"});
	} else {
		$("footer").css({top : 0 , position : "relative"});
	}
});