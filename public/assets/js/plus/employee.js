$(function(){
   var init_submit = $('input[type="submit"]');
   var alt_submit = $('<button/>');

   alt_submit.addClass('btn btn-primary');

   alt_submit.html('search');
   alt_submit.insertBefore(init_submit);

   init_submit.addClass('hidden');

   console.log(init_submit.val());

   alt_submit.on('click',init_submit.parent().submit);
});
