<%-- 
    Document   : Deportes
    Created on : 8 nov. 2020, 3:03:51
    Author     : Luis
--%>

<%@ page import="Models.Noticia"%>
<%@ page import="java.util.List"%>



<%
    List<Noticia> news = (List<Noticia>) request.getAttribute("noticias");
    String subCat = (String)request.getAttribute("v_subCat");
%>
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
        <link rel="stylesheet" href="css/Deportes.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
        <title>Deportes</title>
    </head>

    <body>
        <%-- JSP para el header --%>
        <jsp:include page="header.jsp"/>

        <div class="Articulos" style="position: relative; top: 0px" id="content">
            <div class="wrapper">
                <div class="imagen-categoria row container">
                    <img src="assets/Deportes.jpg" alt="FotoDeportes" />
                </div>
                <div class="row">
                    <section class="Seccion-Titulo container"><%= subCat %></section>
                </div>
                <div class="galeria-noticias container row">
                    <% for (Noticia NotiDeporte : news) { %>
                    <%if(NotiDeporte.getCategoria().equals(subCat) || subCat.equals("General")){%>
                    <div class="noticia-box container">
                        <a href="ShowNoticia?idnoticia=<%= NotiDeporte.getId() %>">
                            <div class="img-box container">
                                <img src="<%= NotiDeporte.getImagen()%>" alt="FotoNoticia" />
                            </div>
                            <h2><%= NotiDeporte.getTitulo()%></h2>
                            <p>
                                <%= NotiDeporte.getDescripcion()%>
                            </p>
                        </a>
                    </div>
                            <% } %>
                    <% }%>
                </div>
            </div>
        </div>

        <%-- JSP para el footer --%>
        <jsp:include page="footer.jsp"/>
    </body>
</html>

