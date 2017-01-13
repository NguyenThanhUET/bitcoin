// You can also use "$(window).load(function() {"
$(document).ready(function() {
    // Slideshow 1
    $("#slider1").responsiveSlides({
        speed: 900
    });
   /* $('body').load(function(){
        alert('dsds');
        startTime();
        visitor();
    });*/
    startTime();
    visitor();
});
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    var year = today.getFullYear();
    var month = today.getMonth()+1;
    var day = today.getDay();
    m = checkTime(m);
    s = checkTime(s);


    var now = moment().format('Y-MM-DD hh:mm:ss');
    $('#date_time').html( now);

    var t = setTimeout(startTime, 500);
}
function visitor(){
    var visitMin    = 1*$('#visitMin').val();
    var visitMax    = 1*$('#visitMax').val();
    var refreshVistor   =   1*$('#refreshVistor').val();
    $('#visitor').html(getRandomArbitrary(visitMin,visitMax));
    var t = setTimeout(visitor, refreshVistor);
}

function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
function getRandomArbitrary(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}