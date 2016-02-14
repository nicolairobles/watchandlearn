$(document).ready(function() {
  console.log('topics js loaded');

  $("#curriculums").dataTable({
    "pageLength" : 5,
    // "sDom": '<"top">rt<"bottom"p><"clear">',
    "ordering": false,
    "sPaginationType": "full_numbers",
    "bFilter": true,
    "sDom":"rtp" // default is lfrtip, where the f is the filter
  });

  var table = $("#curriculums").DataTable();
  $("#filter").on("change", function() {
    console.log(this.value);
    // console.log("works")
    // //filter by selected value on second column
    // table.column(0).search($(this).val()).draw();
  });

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
    
});
