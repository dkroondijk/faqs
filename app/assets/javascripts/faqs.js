$(document).ready(function() {

  $('#faqs').sortable({
    update: function() {
      var ids = $('#faqs').sortable('serialize');
      $.post('/faqs/sort', ids);
    }
  });

});