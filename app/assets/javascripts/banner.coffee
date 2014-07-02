# Function locale_changed
locale_changed = ->
  console.log( 'Locale changed' )

# Function change_locale_not_working
change_locale_not_working = ->
  locale_selected = $("#locale_switch option:selected").val()
  console.log( "New request: " + locale_selected )

# Document ready
$ ->
  #alert( "Yes ready")
  #$( '#locale_switch').on( 'change', locale_changed );
