
//function fade_in_and_out( ) {
//    // Get elements with "fade_in" class
//    var sentences = []
//
//    $(".fade_in").each( function( index, sentence ) {
//        sentences.push($( sentence ));
//        $( sentence).delay(2000).fadeIn(2000);
//        $( sentence).delay(2000).fadeOut(2000);
//    } );
//}
//
//// Call fade_in_and_out every 6 seconds
//setInterval(fade_in_and_out, 4000)



// Fade in and out elements with class "fade_in"
// source: http://stackoverflow.com/questions/5148004/jquery-fadein-and-fadeout-lis-and-start-over-at-the-last-li
function fade_in_and_out() {
    var i = 1;
    function showOne() {
        if (i === 1)
            $('.fade_in').hide( );
        $('.fade_in').eq(i - 1).delay( 1000 ).fadeIn( 1000, function() {
            $('.fade_in').eq(i - 1).delay(5000).fadeOut(1000, function() {
                if ( ++i > 4 )
                    i = 1;
                showOne();
            });
        });
    }
    showOne();
}

fade_in_and_out();