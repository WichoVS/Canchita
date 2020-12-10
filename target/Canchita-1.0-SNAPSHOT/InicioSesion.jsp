<%-- 
    Document   : InicioSesion
    Created on : 8 nov. 2020, 3:07:21
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
        <link rel="stylesheet" href="https://use.typekit.net/gkx8ybj.css">
        <link rel="stylesheet" href="css/InicioSesion.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="js/header.js" defer></script>
        <script src="js/login.js" async></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
        <title>Inicio de Sesión</title>
    </head>

    <body>
        <%-- JSP para el header --%>
        <jsp:include page="header.jsp"/>

        <div
            class="inicio-sesion container row"
            style="position: relative; top: 0px"
            id="content"
            >
            <div class="ilustracion-left container">
                <img src="assets/LoginMedium.png" alt="ImagenInicioSesión" />
            </div>
            <div class="datos container">
                <h1>INICIO DE SESIÓN</h1>
                <form class="container" id ="formulario" name="formulario"action="" method="" >
                    <label for="input-usuario">Nombre de Usuario: </label>
                    <input type="text" name="input-usuario" class="input-usuario" required/>
                    <label for="input-contra">Contraseña: </label>
                    <input type="password" name="input-contra" class="input-contra" required />
                    <input type="submit"  value="Iniciar Sesión" />
                    <p id="ajaxresponse" class ="ajaxresponse" style="display:none" ></p>
                </form>
                <h2><a href="Registro.jsp">Registrarse</a></h2>
            </div>
        </div>


        <%-- JSP para el footer --%>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
