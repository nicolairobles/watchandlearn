

$(document).ready(function() {
	console.log(" video.js loaded")

	$('.right_button').on("click", function() {
	console.log("contact clicked");

		if ($(this).hasClass('email')) {
			$('.contact').show();
			$('.email').hide();
		} else {
			$('.contact').hide();
			$('.email').show();
	}
	})
})