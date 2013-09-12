// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.pjax
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require soundcloud
//= require transition
//= require_tree .


	

$(document).ready(function(){
	var logo_img = $('.logo'),
		logo_img2 = $('.logo2'),
		logo_yellow = $('.logo_yellow');

	logo_img.on('mouseenter', function(){
		logo_img2.fadeIn('500');
		logo_yellow.fadeIn('900');
	});
	logo_img2.on('mouseleave', function(){
		var $this = $(this);
		$this.fadeOut('400');
		logo_yellow.fadeOut('500');
	});
	var header = $('header'),
		player = $('#player'),
		soundcloud = $('#sc-widget');

	header.addClass('header_finish');
	setTimeout(function(){
		player.fadeIn('fast').transition({rotate: '360deg'});
		soundcloud.transition({marginLeft:'0'},1600);
	},1300);
	

	
});



