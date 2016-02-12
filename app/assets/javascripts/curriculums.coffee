# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/





#nicolai
$('select[name="dropdown"]').change ->
  if $(this).val() == '2'
    alert 'call the do something function on option 2'

#jared
`$(document).ready(function() {
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
  	}, 1000);
  	

  });
});`
  
  