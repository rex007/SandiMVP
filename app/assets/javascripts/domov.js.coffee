jQuery (window) ->
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
jQuery ->
	$(window).scroll ->
		top = $(window).scrollTop()
		where = $(document).height() - $(window).height()
		if top > where - 850
			$('.bio_first2').animate('left': 15, 600)
			$('.bio_second2').animate('right': 0, 900)
		if top > where / 2 + 200
			$('.bio_third2').animate('top': 0, 800)
		if top > where 
			$('footer').fadeIn('slow').delay(2500, -> 
				$('.spletko').fadeIn('slow').delay(3000, ->
					$('.rails').animate('right':'4%')))
		



