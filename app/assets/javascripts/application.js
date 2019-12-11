// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets

//= require activestorage
//= require turbolinks
//= require_tree .


$(document).ready(function() {
    console.log("DOM loaded")
    /*$("#submit_message").click(function() {
        $.ajax({
            url: '/messages/mew',
            type: 'post',
            dataType: 'json',
            data: $("#message_form").serialize(),
            success: function(data) {
                console.log(data)
                $("#message_input").val("");
            }
        })
    })*/

    $("form#message_form").submit(function(e){
        e.preventDefault();
        console.log($('form#message_form').serialize())
        var body = $("#message_input").val();
        var event = $("input[name=event_id]").val()
        var message = {
            message: {
                event_id: event,
                body: body
            }
        }
        $.ajax({
            url: '/messages',
            type: 'post',
            dataType: 'json',
            data: message,
            success: function(data) {
							console.log(data) 
							$("#message_input").val("")  
							location.reload()       
          	},
            error: function(err) {
                console.log(err)
            }
        });
    })
})

jQuery(document).ready(function() {
    jQuery("#validate_form").validate({
        rules: {
           
           email: {
              required: true,
              email: true,//add an email rule that will ensure the value entered is valid email id.
              maxlength: 255,
           },
           password: {
               required: true,
               minlength:6
           }
        },
        messages: {
            u_email: 'Enter a valid email'
         },
        submitHandler: function(form) {
            form.submit();
        }
     });
 });