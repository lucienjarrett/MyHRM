// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .



jQuery(function() {
  var company, location_id, options, locations;
  
  locations = $('#employee_location_id').html();
  
  $('#employee_company_id').change(function() {
  location_id = $(this).val();
  company = $('#employee_company_id :selected').text();
  options = $(locations).filter("optgroup[label='" + company + "']").html();
   if (options) {
      $('#employee_location_id').html(options);
      $('#employee_location_id').parent().show();
      $('#hide_me').show();

        } 
    
    else 
    {
      $('#employee_location_id').empty();
      $('#employee_location_id').parent().hide();
      $('#hide_me').hide();

}
});

//Hide Bank Account Number Control On Page Load
$(document).ready(function() {
        $('#hide_bank').hide();
        $('#hide_me').hide();
        console.log("I am working")
    });


//Bank Bank Account Number Show/Hide
$('#employee_bank_id').change(function(){
  var bank = $(this).val(); 
  if (bank.length != 0){
    console.log("This is a test"); 
    $('#employee_bank_account_number').parent().show(); 
    $('#hide_bank').show(); 
  }
  else 
  {
  $('#employee_bank_account_number').parent().hide(); 
  $('#hide_bank').hide()
}
});


$('form').on('click', '.remove_fields', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('fieldset').hide();
    return event.preventDefault();
  });
  return $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });


});


