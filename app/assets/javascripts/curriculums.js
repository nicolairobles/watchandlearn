
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

// Nicolai
$(document).ready(function() {
  console.log('nr script loaded');


  // Logic to Hide/Show LEVEL Selected
  $('#level').on('change', function() {
    console.log(this.value); 
    if (this.value === "1") {
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
    if (this.value === "1") {
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


  // Enable Column Sorting
  var curriculums, asc1 = 1,
    asc2 = 1,
    asc3 = 1;
  window.onload = function () {
    curriculums = document.getElementById("curriculums");
  }

  function sort_table(tbody, col, asc) {
    var rows = tbody.rows,
        rlen = rows.length,
        arr = new Array(),
        i, j, cells, clen;
    // fill the array with values from the table
    for (i = 0; i < rlen; i++) {
        cells = rows[i].cells;
        clen = cells.length;
        arr[i] = new Array();
        for (j = 0; j < clen; j++) {
            arr[i][j] = cells[j].innerHTML;
        }
    }
    // sort the array by the specified column number (col) and order (asc)
    arr.sort(function (a, b) {
        return (a[col] == b[col]) ? 0 : ((a[col] > b[col]) ? asc : -1 * asc);
    });
    // replace existing rows with new rows created from the sorted array
    for (i = 0; i < rlen; i++) {
        rows[i].innerHTML = "<td>" + arr[i].join("</td><td>") + "</td>";
    }
  }


});

  
  
