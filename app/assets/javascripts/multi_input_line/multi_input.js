jQuery(function($){
  $('*[data-validation-error]').each(function(){
    var input = $(this);
    var parent = input.parents("div.multi");
    wrapper = $('<div style="display: inline-block; vertical-align: top"></div>');
    input.replaceWith(wrapper);
    wrapper.append(input);
    parent.addClass('field_with_errors');
    parent.addClass('error');
    var message = input.data('validation-error');
    var span = $('<span class="error help-inline" style="display:block"></span>');
    span.text(message);
    wrapper.append(span);
  });
});