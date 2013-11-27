# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  $('#all-blocks').sortable();
  
  $('.best_in_place').best_in_place();
  
  $('.add-block').click ->
    $('#all-blocks').append('hi');
    return false;