# Function locale_changed
locale_changed = ->
  console.log( 'Locale changed' )

# Function change_locale_not_working
change_locale_not_working = ->
  locale_selected = $("#locale_switch option:selected").val()
  console.log( "New request: " + locale_selected )

# Document ready
#$ ->
  #$('#banner p').delay( 5000 ).fadeIn( 5000 );
  #$(".fade_in").hide( );
  #$('#banner p .fade_in').show( );
  #alert( "Yes ready")
  #$( '#locale_switch').on( 'change', locale_changed );
