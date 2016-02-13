$(document).ready(function() {

console.log("script loaded - video");

$('.vote_button').on('click', function(){
	console.log('button clicked')
	$(this).toggleClass('picked')

	if ($(this).hasClass('picked')) {
		console.log("picked")
		$(this).css("color", "blue")
		vote_status = 1

	} else {
		console.log("unpicked")
		$(this).css("color", "black")
		vote_status = 0
	}

	if ($(this).hasClass('vote_up')){
			$.ajax({
            url: '/votes',
            type: 'POST',
          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},    
            data: {value: vote_status},
            success: function(result){
            	console.log("you added a vote")
            }
        })
	

	} else {
		$.ajax({
            url: '/votes',
            type: 'POST',
          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},    
            data: {value: vote_status},
            success: function(result){
            	console.log("you added a vote")
            }
        })
	}


})
})