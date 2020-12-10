/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#marcador').click (function(){
 //$('#btn_reg').click(function(){
     
  
     
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
        document.formulario.action = "index.jsp";
        document.formulario.method = "POST";
                document.formulario.submit();
    }
    }
        });
    
    });
 


