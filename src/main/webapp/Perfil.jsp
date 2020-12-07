<%-- 
    Document   : Perfil
    Created on : 8 nov. 2020, 3:08:06
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
        <link rel="stylesheet" href="css/Perfil.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>Perfil</title>
    </head>

    <body>
     <%-- JSP para el header --%>
         <jsp:include page="header.jsp"/>
         
         
        <div class="Perfil" style="position: relative;top : 0px; " id="content">
            <div class="wrapper">
                <div class="perfil-zone container">
                    <div class="perfil-opciones container">
                        <div class="img-perfil container row">
                            <img src="assets/fakerUserImage.jpg" alt="PerfilFoto" />
                        </div>
                        <div class="perfil-datos container row">
                            <h2>Nombre de Usuario</h2>
                            <h2>Correo</h2>
                            <h2>Red Social</h2>
                            <h2>Red Social</h2>
                        </div>
                        <div class="perfil-config container row">
                            <a href="">Cambiar Nombre de Usuario</a>
                            <a href="">Cambiar Correo</a>
                            <a href="">Cambiar Contraseña</a>
                            <a href="">Cambiar Redes Sociales</a>
                        </div>
                    </div>
                    <div class="noticias-marcadas container">
                        <section class="Seccion-Titulo container row">
                            Noticias Marcadas
                        </section>
                        <div class="perfil-marcadas container row">
                            <div class="noticia-box container">
                                <a href="noticias.jsp">
                                    <div class="img-box container">
                                        <img src="http://placecorgi.com/230/128" alt="" />
                                    </div>
                                    <h2>Titulo</h2>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
                                        fringilla enim non egestas eleifend. Donec quis tincidunt
                                        purus. Donec elementum auctor libero, et gravida
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
         
        <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
    </body>
</html>

