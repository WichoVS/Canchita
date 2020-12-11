/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  $("#formulario").on("submit", function(event){
 //$('#btn_reg').click(function(){
     
      event.preventDefault();

        var form = $('#formulario')[0];
        var data = new FormData(form);
     
     
$.ajax({
    type: 'POST',
    url: 'login',
  enctype: 'multipart/form-data',
    data: data,
    processData: false,
    contentType: false,
    success: function(response){
        
        if(response === "ajax"){
            $('#ajaxresponse').html("El usuario o contraseña son incorrectos");
        $('#ajaxresponse').show();
          
    }else{
        document.formulario.action = "NoticiasPrincipal";
        document.formulario.method = "POST";
                document.formulario.submit();
    }
    }
        });
    
    });
 


