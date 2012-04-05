jQuery(function($){
  $('*[data-validation-error]').each(function(){
    var input = $(this);
    var parent = input.parent("div.multi");
    wrapper = $('<div style="display: inline-block; vertical-align: top"></div>');
    input.replaceWith(wrapper);
    wrapper.append(input);
    parent.addClass('field_with_errors');
    var message = input.data('validation-error');
    var span = $('<span class="error"></span>');
    span.text(message);
    wrapper.append(span);
  });
});