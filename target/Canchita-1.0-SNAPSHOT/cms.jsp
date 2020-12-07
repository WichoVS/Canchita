<%-- 
    Document   : cms
    Created on : 8 nov. 2020, 3:10:01
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="css/cms.css" />
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>CMS</title>
    </head>

    <body>
           <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
        <div class="content" style="position: relative; top:0px;" id="content">
            <div>
                <p>Sistema de creación de contenido</p>
            </div>

            <hr />
            <div class="content_grid">
                <div class="data_form">
                    <label for="">Titulo de notica:</label><br />
                    <input type="text" class="text" /><br />
                    <label for="">Descripcion Corta:</label><br />
                    <input type="text" class="text" /><br />
                    <label for="">Noticia:</label><br />
                    <textarea name="" id="" cols="30" rows="10"></textarea><br />
                    <label for="">Categoria(s):</label><br />
                    <select name="" id="">
                        <option value="">Seleccionar categoria</option>
                    </select>
                </div>
                <div class="data_resource">
                    <p>Imagenes</p>
                    <div class="rsc_image">
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                    </div>
                    <p>Videos</p>
                    <div class="rsc_video">
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                        <div>
                            <div class="image"></div>
                            <center><button>Seleccionar...</button></center>
                        </div>
                    </div>
                </div>
            </div>
            <center><button>Enviar y Aprobar</button></center>
            <br />
            <br />
            <br />
        </div>
       
       
       
        <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
    </body>

</html>
