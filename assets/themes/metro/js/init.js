$(document).ready(function() {
  // $('.image-link').magnificPopup({type:'image'});

	$('.jcarousel').jcarousel({
	    animation: {
	        duration: 200,
	        easing:   'linear',
	        complete: function() {
	        }
	    },
	    wrap: "circular",
	    // items: '.jcarousel li'
	});

	/*
   Pagination initialization
   */
  $('.jcarousel-pagination')
      .on('jcarouselpagination:active', 'a', function() {
          $(this).addClass('active');
      })
      .on('jcarouselpagination:inactive', 'a', function() {
          $(this).removeClass('active');
      })
      .jcarouselPagination({
          // Options go here
      });
});