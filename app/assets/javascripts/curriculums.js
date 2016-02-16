
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
    console.log("created_video")
    setTimeout(function() {
      $('.video_title').val('');
      $('.video_urlid').val('');
      $('.video_description').val('');
      $('.video_order').val('');
      $('.video_thumbnail').val('');
      $(".addvideoform").hide();
      $(".addvideoform").removeClass("clicked_once");
    }, 1000)
    


  });


});

  
  
