$(document).ready(function() {


$('.subscribe_button').on('click', function() {
      $(this).addClass("chosen")
      $.ajax({
            url: '/subscriptions',
            type: 'POST',  
            data: {
                  
                  'curriculum_id' : $('.curric_id').val(),
                  'user_id' : $('.user_id').val()
            },
            success: function(result){
                  console.log("you added a subscription ");
                  console.log($('.curric_id').val());
                  console.log($('.user_id').val());

                  setTimeout(function(){
                  $('.chosen').text("You've subscribed!")
                  }, 300)

            }
        })
      

})



});