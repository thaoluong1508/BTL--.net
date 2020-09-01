$(document).ready(function(){
	$('.slides').owlCarousel({
	    items:4,
	    lazyLoad:true,
	    loop:true,
	    margin:10,
	    autoWidth: true,
	    autoplayTimeout:2000,		
	    autoplay:true,
	    autoplayHoverPause:true
	});
	$('.play').on('click',function(){
	    owl.trigger('play.owl.autoplay',[1000])
	})
	$('.stop').on('click',function(){
	    owl.trigger('stop.owl.autoplay')
	})

	$('.hotproduct').owlCarousel({
	    loop:true,
	    margin:10,
	    responsiveClass:true,
	    dots: false,
	    responsive:{
	        0:{
	            items:1,
	        },
	        600:{
	            items:3,
	        },
	        1000:{
	            items:4,
	            loop:false
	        }
	    }
	})

	$('.hot-new').owlCarousel({
	    items:3,
	    loop:true,
	    margin:30,
	    autoplay:true,
	    dots:false,
	    autoplayTimeout:2000,
	    autoplayHoverPause:true
	});
	$('.play').on('click',function(){
	    owl.trigger('play.owl.autoplay',[1000])
	})
	$('.stop').on('click',function(){
	    owl.trigger('stop.owl.autoplay')
	})

	$('.newspapers').owlCarousel({
	    loop:true,
	    margin:10,
	    nav:false,
	    responsive:{
	        0:{	
	            items:1
	        },
	        600:{
	            items:2
	        },
	        1000:{
	            items:4
	        }
	    }
	})


});

