$(document).ready(function($) {
	$('#form_random').submit(function(event) {
		event.preventDefault();
		var data = '{"create": "Y"}';
		$.ajax({
			url: '/generate',
			type: 'POST',
			dataType: 'json',
			data: {data},
		})
		.done(function(response) {
			$('#success').show('fast').html('ID of your generated number is '+response.your_id+'. If you want to see you number click that link '+ '<a href="/retrive/'+response.your_id+'">See your number</a>');
			$('#success').append('<p>If you want to see other numbers selected by ID go to "/retrive/{other number id}"</a></p>');
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		
	});
	
});