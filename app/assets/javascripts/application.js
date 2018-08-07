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

// ____________jQuery starts  _________
$(document).ready(function(){
// __________________________________

   $('#notice_wrapper').hide();
	$('#notice_wrapper').fadeIn();
  setTimeout(function(){
    $('#notice_wrapper').fadeOut('slow', function(){
    	$(this).remove();
    })
  }, 4500);

(function() {
    let language_select = $(".language_select");
    let langIndex = -1; 
    function showNextLang() {
        ++langIndex;
        language_select.eq(langIndex % language_select.length)
            .fadeIn(2000)
            .delay(2000)
            .fadeOut(2000, showNextLang);
    }   
    showNextLang();
    
})();
 
// ________  JQuery ends _________________________
}); 










