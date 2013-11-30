# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ($) ->
  `
  $('#all-blocks').sortable({
    axis: 'y',
    scroll: true,
    update: function(){
      $.ajax({
        url: '/blocks/sort/' + $('#current_screenplay').val(),
        type: 'post',
        data: $('#all-blocks').sortable('serialize'),
        dataType: 'script',
        complete: function(request){
          $('#all-blocks').effect('highlight');
        }
      });
    }
  });
  `
  
  $('.best_in_place').best_in_place();