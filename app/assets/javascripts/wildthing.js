$(document).ready(function(){
  
	// Smooth scroll inline links
	$('a[href*=#]').click(function() {
	  var targetPosition=$(this.hash).offset().top;
	  $('html:not(:animated),body:not(:animated)').animate({ scrollTop: targetPosition }, {
	    duration: 500, 
	    easing:'swing'
	  });
	  return false;   
	});
	
	// Tips
	$('.tip[title]').qtip({
		style: {
			classes: 'ui-tooltip-rounded ui-tooltip-shadow'
		},
		position: { 
			at:"top center",
			my:"bottom center" 
		},
		show:{delay:0},
		style:{tip:true,classes:"ui-tooltip-tipsy ui-tooltip-shadow"}
	});
	
	// Forms
	$('#new_pledge, #new_idea').each(function(i,el){
		
		$(el).find('.string label, .email label, .text label').hide();
		
		$(el).bind('submit',function(ev){
			$(el).find('.auto input[type="text"],.auto input[type="email"]').each(function(i,input) {
				if($(input).val()==$(input).data('placeholder')) {
					$(input).val('')
				}
			})
		})
		
		
		$(el).find('.auto input[type="text"],.auto input[type="email"],.text textarea').each(function(i,input) {

			input = $(input);
			text = input.data('placeholder');
		
			if(input.val()=='') {
				input.val(text)
			} 
		
			input.bind('focus',function(ev){
				if($(this).val()==$(this).data('placeholder')) {
					$(this).val('')
				}
			});
		
			input.bind('blur',function(ev){
				if($(this).val()=='') {
					$(this).val($(this).data('placeholder'));
				}
			});
			
		});
		
	});
	
});