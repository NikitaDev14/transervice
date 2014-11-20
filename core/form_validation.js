$('form').submit(function () {
    return validateForm()
})

function validateForm()
{
    for(var item in data)
    {
        if (!data[item].isValid)
        {
            var selector = '#' + item;
            console.log(selector);
            $(selector).focus();
            
            return false;
        }    
    }
	
    return true;
}

function validateField(obj, data)
{
    obj.keyup(function()
    {
        var notat = '';

        if (!data.template.test(obj.val())) {
            notat = data.notation;

            data.isValid = false;
        }
        else
            data.isValid = true;

        obj.next().text(notat);
    });
}

$('#init').focus(validateField($('#init'), data.init));

$('#phone').focus(validateField($('#phone'), data.phone));

$('#email').focus(validateField($('#email'), data.email));