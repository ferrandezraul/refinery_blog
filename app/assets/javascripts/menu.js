//$( document ).ready( function( ){

//} )

$("#menu ul li").mouseover(function(){
    $('#menu ul li ul li').show();
});
$("#menu ul li").mouseout(function(){
    $("#menu ul li ul li").hide();
});