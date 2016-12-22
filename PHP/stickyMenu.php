<script src="../JS/jquery-3.1.1.min.js"></script>
	
	<script>

		$(document).ready(function() {
		var NavY = $('.menu').offset().top;
		 
		var stickyNav = function(){
		var ScrollY = $(window).scrollTop();
			  
		if (ScrollY > NavY) { 
			$('.menu').addClass('sticky');
		} else {
			$('.menu').removeClass('sticky'); 
		}
		};
		 
		stickyNav();
		 
		$(window).scroll(function() {
			stickyNav();
		});
		});
	
	</script>