# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('select[name="dropdown"]').change ->
  if $(this).val() == '2'
    alert 'call the do something function on option 2'
  return

