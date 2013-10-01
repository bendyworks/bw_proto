$(document).ready(function() {
   $('#contact').bind('click', function(e) {
    $('.contact').slideToggle();
    e.preventDefault();
   });

   $('.value-hider').bind('click', function(e) {
    $('#values').slideToggle();
    e.preventDefault();
   });

   $('.mobile-nav').bind('click', function(e) {
    $('header.main ul').slideToggle();
    e.preventDefault();

   });





});

