

$(document).ready(function() {
	console.log(" video.js loaded")

	$('.right_button').on("click", function() {
	console.log("contact clicked");
		$('.right_button').hide();
		$('.email').show();
	})
})