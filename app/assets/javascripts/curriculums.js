
//jared
$(document).ready(function() {
  console.log('script loaded');
  
  $(".addvideobutton").click(function () {
    if ($(".addvideoform").hasClass("clicked_once")) {
    	$(".addvideoform").removeClass("clicked_once");
    	$(".addvideoform").hide();
    	console.log(" class removed + hide")
    } else {
    $(".addvideoform").addClass("clicked_once")
    console.log("button clicked - class added + show");
    $(".addvideoform").show();
    }
  });

  $(".form_submit").click(function () {
  	setTimeout(function() {
  	console.log("created_video");
  	$(':input').val('');
  	$('.form_submit').val("addvideobutton");
  	}, 1000);
  	

  });
});
  
  
