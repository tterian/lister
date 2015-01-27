# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

    $('#car_model_id').prop('disabled', true)
    $('#car_year').prop('disabled', true)
    models = $('#car_model_id').html()
    $('#car_make_id').change ->
        make = $('#car_make_id :selected').text()
        escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
        model_options = $(models).filter("optgroup[label='#{escaped_make}']").html()
        $('#add-car-title').text(make + ' ' + model)
        if model_options
            $('#car_model_id').html(model_options)
            $('#car_model_id').prop('disabled', false)
            $('#car_year').prop('disabled', false)
            model = $('#car_model_id :selected').text()
            $('#add-car-title').text(make + ' ' + model)
            $('#car_model_id').change ->
                model = $('#car_model_id :selected').text()
                $('#add-car-title').text(make + ' ' + model)
        else
            $('#car_model_id').empty()
            $('#car_model_id').parent().show()
            $('#car_model_id').prop('disabled', true)
            $('#car_year').prop('disabled', true)
            $('#add-car-title').empty()