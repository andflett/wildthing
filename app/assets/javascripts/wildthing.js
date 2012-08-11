$(document).ready(function(){
  
	// Smooth scroll inline links
	$('a[href*=#]').click(function() {
	  var targetPosition=$(this.hash).offset().top;
	  $('html:not(:animated),body:not(:animated)').animate({ scrollTop: targetPosition }, {
	    duration:1200, 
	    easing:'swing'
	  });
	  return false;   
	});
	
});