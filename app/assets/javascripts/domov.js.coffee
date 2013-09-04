//=require easyTicker
//=require easing.min

jQuery ->
	$('.upcoming_slide').easyTicker({
		direction: 'up',
		easing: 'swing',
		interval: 3000,
		visible: 4
		})
	$('.past_slide').easyTicker({
		direction: 'down',
		easing: 'easeOutBounce',
		interval: 3500
		})

	$(window).scroll ->
		if $(window).scrollTop() > $(document).height() - $(window).height() - 50
			$('#test')