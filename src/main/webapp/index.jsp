<%-- 
    Document   : index
    Created on : 8 nov. 2020, 2:56:34
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="Models.Usuario"%>  

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="css/index.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>Canchita</title>
    </head>

    <body>
        
         <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
       
        <div style="position: relative; top: 0px" id="content">
            <div class="principal-nota container row">
                <div class="noticia-principal container">
                    <div class="titulo">DAMWON Gaming Campeón del Mundo</div>
                    <div class="desc">
                        EL Equipo coreano se convierte en campeón del Worlds 2020.
                    </div>
                </div>
            </div>
            <div class="wrapper">
                <div class="row">
                    <section class="Seccion-Titulo container">Deportes</section>
                </div>
                <div class="Deportes-Seccion container row">
                    <div class="left container">
                        <div class="noticia-datos container">
                            <div class="titulo">Titulo Noticia</div>
                            <div class="desc">Esta es la Descripción de la noticia.</div>
                        </div>
                    </div>
                    <div class="right container">
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <section class="Seccion-Titulo container">Esports</section>
                </div>
                <div class="Esports-Seccion container row">
                    <div class="left container">
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                        <div class="noticia-pequeña container">
                            <h1>Titulo de Noticia</h1>
                            <p>Esta es la descripción de la noticia</p>
                        </div>
                    </div>
                    <div class="right container">
                        <div class="noticia-datos container">
                            <div class="titulo">Titulo Noticia</div>
                            <div class="desc">Esta es la Descripción de la noticia.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        
        
        <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
        
    </body>
</html>

