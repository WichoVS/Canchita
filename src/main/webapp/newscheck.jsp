<%-- 
    Document   : newscheck
    Created on : 8 dic. 2020, 3:14:04
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Models.Noticia"%>
<%@ page import="java.util.List"%>

<%
    List<Noticia> news = (List<Noticia>)request.getAttribute("noticias");
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
        <link rel="stylesheet" href="css/newscheck.css" />
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>Validar noticias</title>
    </head>

    <body>
           <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
         <div class="Articulos" style="position: relative; top: 0px" id="content">
            <div class="wrapper">
              
                <div class="row">
                    <section class="Seccion-Titulo container">Noticias por validar:</section>
                </div>
                <div class="galeria-noticias container row">
                    
                    <% for(Noticia element: news){%>
                    <div class="noticia-box container">
                        <a href="NotciasCms?idnoticia=<%= element.getId()%>">
                            <div class="img-box container">
                                <img src="<%= element.getImagen() %>" alt="FotodePerro" />
                            </div>
                            <h2> <%= element.getTitulo() %></h2>
                            <p>
                                <%= element.getDescripcion() %>
                            </p>
                        </a>
                    </div>
                    
                    
                    <% }
                    %>
                </div>
            </div>
        </div>
        <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
    </body>

</html>
