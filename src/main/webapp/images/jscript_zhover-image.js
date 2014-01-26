$(function(){
	// zen button hover
	$(".social ul li a").hover(function(){
		$(this).find("img").stop().animate({opacity:0.7}, "slow") 
	}, function(){
		$(this).find("img").stop().animate({opacity:1}, "slow")
	});
});


