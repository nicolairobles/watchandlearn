$(document).ready(function() {


$('.subscribe_button').on('click', function() {

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
                  // console.log(result)
                  // window.location.reload();

            }
        })
      

})



});