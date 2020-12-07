<%-- 
    Document   : Esports
    Created on : 8 nov. 2020, 3:06:45
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
        <link rel="stylesheet" href="css/Esports.css" />
        <link rel="stylesheet" href="css/HyF.css" />
        <script src="js/header.js" defer></script>
        <title>Esports</title>
    </head>

    <body>
          <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
        <div class="Articulos" style="position: relative; top: 0px" id="content">
            <div class="wrapper">
                <div class="imagen-categoria row container">
                    <img src="assets/Esports.jpg" alt="FotoEsports" />
                </div>
                <div class="row">
                    <section class="Seccion-Titulo container">Sub-Categoría</section>
                </div>
                <div class="galeria-noticias container row">
                    <div class="noticia-box container">
                        <a href="noticias.jsp">
                            <div class="img-box container">
                                <img src="http://placecorgi.com/500/150" alt="FotodePerro" />
                            </div>
                            <h2>Noticia Titulo</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                                tempus lectus leo, faucibus faucibus enim commodo vel. Maecenas
                                molestie, arcu at commodo fermentum, velit elit vestibulum urna,
                                quis aliquet mauris lorem a magna. Vivamus posuere pharetra nunc
                                vel gravida. Sed a dolor turpis.
                            </p>
                        </a>
                    </div>
                    <div class="noticia-box container">
                        <a href="noticias.jsp">
                            <div class="img-box container">
                                <img src="http://placecorgi.com/500/150" alt="FotodePerro" />
                            </div>
                            <h2>Noticia Titulo</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                                tempus lectus leo, faucibus faucibus enim commodo vel. Maecenas
                                molestie, arcu at commodo fermentum, velit elit vestibulum urna,
                                quis aliquet mauris lorem a magna. Vivamus posuere pharetra nunc
                                vel gravida. Sed a dolor turpis.
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>

         <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
    </body>
</html>

