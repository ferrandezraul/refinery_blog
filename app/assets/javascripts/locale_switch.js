// Some help commands:
//
// window.location.pathname -> Returns the current url
// location.href            -> Returns the entire URL (of the current page)

function locale_changed() { console.log( 'Locale changed' ); }

// La ajax request parece que funciona pero no se actualiza la pagina con el nuevo locale
// porque solamente se actualiza el _header.html.erb ???
// pero si se cambia el locale
function change_locale_not_working(){
    var locale_selected = $("#locale_switch option:selected").val();
    console.log( "New request: " + locale_selected );

    $.ajax( locale_selected, {
        success: function( response ) {
            console.log( 'Locale changed succesfully ');
            //document.location.href = locale_selected;
            //document.location.reload();
            //alert( 'SUCCESSFULL' );
        },
        error: function( request, error_type, error_message ) {
            console.log( 'Locale can not be changed ');
            alert( 'Error: ' + error_type + ' with message ' + error_message );
            //alert( 'Sorry, no translation available. ' );
        }
    });
}


// La llamada a document.location.href hace que el select se vuelva a poner en English
// pero si se cambia el locale
function change_locale_not_working2(){
    var locale_selected = $("#locale_switch option:selected").val();
    console.log( "New request: " + locale_selected );

    //$('#locale_switch').val(locale_selected).prop('selected', true);
    $("#locale_switch select").val(locale_selected);

    // Set current page to "/locale_selected"
    // If the page doesn't exist (translation not available) it jumps to home
    document.location.href = locale_selected;
}


$(document).ready( function() {
    //$( '#locale_switch').on( 'change', locale_changed );
});
