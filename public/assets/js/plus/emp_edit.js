$(function(){
    var inputs = $('.form-control.form-control');
    var submitter = $('input[type="submit"]');
    console.log(submitter.val());

    inputs.each(function (index,element) {
        console.log(index + ' ' + $(element).attr('name'));
    });

    submitter.bind('click',function(event){
        event.preventDefault();
        var form = $('form[class="form-horizontal"]');

        form.attr('action','/emp_edit');

        form.submit();
    });
});
