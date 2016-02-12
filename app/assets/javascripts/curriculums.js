
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





// Nicolai

  console.log('nr script loaded');


  // Logic to Hide/Show LEVEL Selected
  $('#level').on('change', function() {
    console.log(this.value); 
    if (this.value === "0") {
      console.log("level selected")
      $(".one").show();
      $(".two").show();
      $(".three").show();
    } else if (this.value === "1") {
      console.log("beginner selected")
      $(".one").show();
      $(".two").hide();
      $(".three").hide();
    } else if (this.value === "2"){
      console.log("intermediate selected");
      $(".two").show();
      $(".one").hide();
      $(".three").hide();
    } else if (this.value === "3"){
      console.log("advanced selected");
      $(".three").show();
      $(".one").hide();
      $(".two").hide();
    }
  });

  // Logic to Hide/Show TOPIC Selected
  $('#topic').on('change', function() {
    console.log(this.value); 
    if (this.value === "0") {
      console.log("topic selected")
      $(".javascript").show();
      $(".ruby").show();
      $(".python").show();
    } else if (this.value === "1") {
      console.log("javascript selected")
      $(".javascript").show();
    }
    if (this.value === "2") {
      console.log("ruby selected")
      $(".ruby").show();
    }
    if (this.value === "3") {
      console.log("python selected")
      $(".python").show();
    }
  });

});

  
  
