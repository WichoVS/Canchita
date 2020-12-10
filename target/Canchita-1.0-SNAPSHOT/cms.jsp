<%-- 
    Document   : cms
    Created on : 8 nov. 2020, 3:10:01
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String resultado = (String) request.getAttribute("resultado");
    if (resultado == null)
        resultado = "";
%>
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
        <link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
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
            <form method="POST" action="cms" enctype="multipart/form-data">
                <div class="content_grid">
                    <div class="data_form">
                        <label for="n_titulo">Titulo de notica:</label><br />
                        <input type="text" class="text" name="n_titulo" required/><br />
                        <label for="n_descripcion">Descripcion Corta:</label><br />
                        <input type="text" class="text" name="n_descripcion" required/><br />
                        <label for="n_noticia">Noticia:</label><br />
                        <textarea   cols="30" rows="10" name="n_noticia" required></textarea><br />
                        <label for="n_categoria">Categoria(s):</label><br />
                        <select name="n_categoria" >
                            <option>Futbol</option>
                            <option >Futbol Americano</option>
                            <option >Baloncesto</option>
                            <option >Motor</option>
                            <option >Tenis</option>
                            <option >Boxeo</option>
                            <option >Moba</option>
                            <option >Shooter</option>
                            <option>Estrategia</option>
                            <option >Cartas</option>
                        </select>
                    </div>
                    <div class="data_resource">
                        <p>Imagenes</p>
                        <div class="rsc_image">
                            <div>
                                <div class="image"></div>
                                <center> <input type="file"  name="image1"  accept="image/png, image/jpeg, image/jpg" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="image2"  accept="image/png, image/jpeg, image/jpg" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="image3"  accept="image/png, image/jpeg, image/jpg" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="image4"  accept="image/png, image/jpeg, image/jpg" /></center>
                            </div>
                        </div>
                        <p>Videos</p>
                        <div class="rsc_video">
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="video1"  accept="video/mp4" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="video2"  accept="video/mp4" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="video3"  accept="video/mp4" /></center>
                            </div>
                            <div>
                                <div class="image"></div>
                                <center><input type="file"  name="video4"  accept="video/mp4" /></center>
                            </div>
                        </div>
                    </div>
                </div>
                <center> <input type="submit" id="btn_reg" class="botoncms"
                                value="Enviar a aprobación"/></center>
            </form>
            <center> <p class="resultado"> <%= resultado%></p></center>
            <br />
            <br />
            <br />
        </div>



        <%-- JSP para el footer --%>
        <jsp:include page="footer.jsp"/>
    </body>

</html>
