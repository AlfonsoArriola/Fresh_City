// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


    $(".borough").hover(function(){
        $(this).css("background-image", "url(image-path('bx_flag2.png'))");
        }, function(){
        $(this).css("background-image", "url(image-path('bx_flag2.png'))");
    });



 $("p").hover(function(){
        $(this).css("font-family: ", "Tengwarc");
        }, function(){
        $(this).css("font-family: ", "Tengwarc");
    });






});