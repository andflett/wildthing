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
	
	// Forms
	$('#new_pledge').each(function(i,el){
		
		$(el).find('.string label').hide();
		
		$(el).bind('submit',function(ev){
			$(el).find('.auto input[type="text"]').each(function(i,input) {
				if($(input).val()==$(input).data('placeholder')) {
					$(input).val('')
				}
			})
		})
		
		
		$(el).find('.auto input[type="text"]').each(function(i,input) {

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