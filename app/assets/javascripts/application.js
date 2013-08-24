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
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require soundcloud
//= require_tree .

$(document).foundation();

$(document).ready(function(){
	var logo_img = $('.logo'),
		logo_img2 = $('.logo2');

	logo_img.on('mouseenter', function(){
		logo_img2.fadeIn('500');
	});
	logo_img2.on('mouseleave', function(){
		var $this = $(this);
		$this.fadeOut('400');
	});

	soundcloud.addEventListener('onPlayerReady', function(player, data) {
     player.api_play();
   });

});



