
$(document).ready(function(){

// $('#loadingDiv')
//    .hide()  // hide it initially
//    .ajaxStart(function() {
//        $(this).show();
//    })
//    .ajaxStop(function() {
//        $(this).hide();
//    });
});






function btnClick() {


    //alert("alex");

    var phone = $("#phone").val().replace(/\D+/g, '');
    var error = "";


    // name
    if ($("#name").val() == "") {
        error += "אנא הזינו שם" + "\n";
        $("#name").addClass("error").focus();

    }
    else {
        $("#name").removeClass("error");
    }


    //email

    var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);


    var emailaddressVal = $("#mail").val();

    if ($("#mail").val() == "") {
        error += 'אנא הזינו את כתובת המייל' + "\n";
        $("#mail").addClass("error").focus();

    }
    else if (!pattern.test(emailaddressVal)) {
        error += 'כתובת מייל אינה תקינה' + "\n";
        $("#mail").addClass("error").focus();
    }
    else {
        $("#email").removeClass("error");
    }
    //end email




    //phone
    if ($("#phone").val() == "") {
        error += "אנא הזינו מספר טלפון" + "\n";
        $("#phone").addClass("error").focus();
    }
    else if (phone.length < 6) {
        error += 'המספר אינו תקין' + "\n";
    }
    else {
        $("#phone").removeClass("error");
    }



    if (error != "") {
        alert(error);

    } else {
        //alert("sending");
        send();
    }
}


function send() {

    var data = {
        contact_name: $('#name').val(),
        phone: $('#phone').val(),
        email: $('#mail').val()
    }
    data = JSON.stringify(data);

    //alert(data);

    $("#target").html("<img src='images/loader.gif' />");
    

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Index.aspx/Send",
        data: data,
        dataType: "json",
        success: function (msg) {
            $('#target').html("<br/> <span class='sentMgs'>Details Sent</span>");
             alert(msg.d);
            window.location.replace("Thank.aspx");
        }
    });
}
