// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .


// $(document).ready(function(){
//    setTimeout(function(){
//      $('#notice_wrapper').fadeOut('slow', function(){
//          $(this).remove();
//      });
//    }, 4500);
// });

$(document).ready(function(){
   $('#notice_wrapper').hide();
	$('#notice_wrapper').fadeIn();
  setTimeout(function(){
    $('#notice_wrapper').fadeOut('slow', function(){
    	$(this).remove();
    })
  }, 4500);

}); 


// function initialize() {
//         let site_location = {lat: site_lat, lng: site_long}
//         let map = new google.maps.Map(document.getElementById('map'), {
//           center: site_location,
//           zoom: 14
//         });
//         var panorama = new google.maps.StreetViewPanorama(
//             document.getElementById('pano'), {
//               position: site_location,
//               pov: {
//                 heading: 34,
//                 pitch: 10
//               }
//             });
//         map.setStreetView(panorama);
// }



// $(document).ready(function(){


//     $(".bk_select").hover(function(){
//         $(this).css("background-image", "url(image-path('bx_flag2.png'))");
//         }, function(){
//         $(this).css("background-image", "url(image-path('bx_flag2.png'))");
//     });


// });