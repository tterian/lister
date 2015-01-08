# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

    $('#car_model').prop('disabled', true)
    $('#car_year').prop('disabled', true)
    models = $('#car_model').html()
    $('#car_make').change ->
        make = $('#car_make :selected').text()
        escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
        model_options = $(models).filter("optgroup[label='#{escaped_make}']").html()
        $('#add-car-title').text(make + ' ' + model)
        if model_options
            $('#car_model').html(model_options)
            $('#car_model').prop('disabled', false)
            $('#car_year').prop('disabled', false)
            model = $('#car_model :selected').text()
            $('#add-car-title').text(make + ' ' + model)
            $('#car_model').change ->
                model = $('#car_model :selected').text()
                $('#add-car-title').text(make + ' ' + model)
        else
            $('#car_model').empty()
            $('#car_model').parent().show()
            $('#car_model').prop('disabled', true)
            $('#car_year').prop('disabled', true)
            $('#add-car-title').empty()

    $('#basic').fileupload
        done: (e, data)->
        console.log "Done", data.result
        $("body").append(data.result)