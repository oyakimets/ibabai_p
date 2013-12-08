updateCountdown = ->
	remaining = 140 - jQuery("#qa_question").val().length

	jQuery(".countdown").text remaining + " characters remaining"
	jQuery(".countdown").css('color', if remaining < 0 then 'red' else '$greyLight')

jQuery ->
	updateCountdown()
	$("#qa_question").change updateCountdown
	$("#qa_question").keyup updateCountdown
