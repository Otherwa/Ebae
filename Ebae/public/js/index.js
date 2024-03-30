// parallex
$(document).ready(function () {
    $('.parallax').parallax();
});

//navbar
$('.button-collapse').sideNav({
    menuWidth: 300, // Default is 300
    edge: 'left', // Choose the horizontal origin
    closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor    
});


//drop down
$(document).ready(function () {
    $('.collapsible').collapsible();
});

//tabs
$(document).ready(function () {
    $('ul.tabs').tabs();
});