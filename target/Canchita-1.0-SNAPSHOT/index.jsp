<%-- 
    Document   : index
    Created on : 8 nov. 2020, 2:56:34
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Usuario"%>  

<%@ page import="Models.Noticia"%>
<%@ page import="java.util.List"%>



<%
    List<Noticia> Deportes = (List<Noticia>) request.getAttribute("Deportes");
    List<Noticia> Esports = (List<Noticia>) request.getAttribute("Esports");
    Noticia deportesBig;
    Noticia esportsBig;
    
    int TamañoDep = Deportes.size();
    int TamañoEsp = Esports.size();

    Noticia auxData;
%>

<% deportesBig = Deportes.get(Deportes.size() - 1); %>
<% esportsBig = Esports.get(Esports.size() - 1);%>

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
        <link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
        <title>Canchita</title>
    </head>

    <body>

        <%-- JSP para el header --%>
        <jsp:include page="header.jsp"/>


        <div style="position: relative; top: 0px" id="content">
            <a href="ShowNoticia?idnoticia=10010">
                <div class="principal-nota container row">
                    <div class="noticia-principal container">
                        <div class="titulo">DAMWON Gaming Campeón del Mundo</div>
                        <div class="desc">
                            EL Equipo coreano se convierte en campeón del Worlds 2020.
                        </div>
                    </div>         
                </div>
            </a>
            <div class="wrapper">
                <div class="row">
                    <section class="Seccion-Titulo container">Deportes</section>
                </div>
                <div class="Deportes-Seccion container row">
                    <a class="left container" style="background: url(<%= deportesBig.getImagen()%>);background-repeat: no-repeat;background-size: cover;"
                       href="ShowNoticia?idnoticia=<%= deportesBig.getId()%>">
                        <div class="noticia-datos container">
                            <div class="titulo"> <%= deportesBig.getTitulo()%></div>
                            <div class="desc"><%= deportesBig.getDescripcion()%></div>
                        </div>
                    </a>

                    <div class="right container">
                        <% if (TamañoDep >= 2) {%>
                        <% auxData = Deportes.get(TamañoDep - 2);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoDep >= 3) {%>
                        <% auxData = Deportes.get(TamañoDep - 3);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoDep >= 4) {%>
                        <% auxData = Deportes.get(TamañoDep - 4);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoDep >= 5) {%>
                        <% auxData = Deportes.get(TamañoDep - 5);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                    </div>
                </div>
                <div class="row">
                    <section class="Seccion-Titulo container">Esports</section>
                </div>
                <div class="Esports-Seccion container row">
                    <div class="left container">
                        <% if (TamañoEsp >= 2) {%>
                        <% auxData = Esports.get(TamañoEsp - 2);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoEsp >= 3) {%>
                        <% auxData = Esports.get(TamañoEsp - 3);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoEsp >= 4) {%>
                        <% auxData = Esports.get(TamañoEsp - 4);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                        <% if (TamañoEsp >= 5) {%>
                        <% auxData = Esports.get(TamañoEsp - 5);%>
                        <a class="noticia-pequeña container" href="ShowNoticia?idnoticia=<%= auxData.getId()%>">
                            <h1><%=  auxData.getTitulo()%></h1>
                            <p><%=  auxData.getDescripcion()%></p>
                        </a>
                        <% }%>
                    </div>
                    <a class="right container" style="background: url(<%= esportsBig.getImagen()%>);background-repeat: no-repeat;background-size: cover;" 
                       href="ShowNoticia?idnoticia=<%= esportsBig.getId()%>">
                        <div class="noticia-datos container">
                            <div class="titulo"><%= esportsBig.getTitulo()%></div>
                            <div class="desc"><%= esportsBig.getDescripcion()%></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>



        <%-- JSP para el footer --%>
        <jsp:include page="footer.jsp"/>

    </body>
</html>

