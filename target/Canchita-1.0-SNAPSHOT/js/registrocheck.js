  $("#formulario").on("submit", function(event){
 //$('#btn_reg').click(function(){
     
      event.preventDefault();

        var form = $('#formulario')[0];
        var data = new FormData(form);
     
     
$.ajax({
    type: 'POST',
    url: 'Registro',
    enctype: 'multipart/form-data',
    data: data,
    processData: false,
    contentType: false,
    success: function(response){
        
        if(response === "Problema al registrar"){
             $('#ajaxresponse').addClass("fail_response");
        $('#ajaxresponse').html(response);
    }else{
        
        $('#formulario').hide();
        $('#ajaxresponse').addClass("correct_response");
        $('#ajaxresponse').html(response);
        $('#redirect').show();
    }
    }
        });
    
    });
 