$( document ).ready(function() {

	// to handle rails flash with js
	flashHandler = function(e, params) {
		M.toast({html: params.message, classes: 'rounded '+ params.type, timeRemaining: 400})
	};
	$(window).bind('rails:flash', flashHandler);

});
