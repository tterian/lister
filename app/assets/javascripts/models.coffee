# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#car_model').prop('disabled', true)
  models = $('#car_model').html()
  $('#car_make').change ->
    make = $('#car_make :selected').text()
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    if options
      $('#car_model').html(options)
      $('#car_model').parent().show()
      $('#car_model').prop('disabled', false)
    else
      $('#car_model').empty()
      $('#car_model').parent().show()
      $('#car_model').prop('disabled', true)
