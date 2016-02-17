$(document).ready(function() {


$('.subscribe_button').on('click', function() {
      $(this).prev().addClass('input_selected');

      $(this).addClass("chosen")
      $.ajax({
            url: '/subscriptions',
            type: 'POST',  
            data: {
                  'curriculum_id' : $('.input_selected').val(),
                  'user_id' : $('.user_id').val()
            },
            success: function(result){
                  console.log("you added a subscription ");
                  console.log("curriculum: " + $('.input_selected').val());
                  console.log("user " + $('.user_id').val());

                  setTimeout(function(){
                  $('.chosen').text("You've subscribed!")
                  }, 300)

            }
        })
      

})



});