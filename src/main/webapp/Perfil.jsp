<%-- 
    Document   : Perfil
    Created on : 8 nov. 2020, 3:08:06
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Usuario"%>
<%@ page import="java.util.List" %>
<%@ page import="Models.Noticia" %>
<% 
    Usuario user = (Usuario) session.getAttribute("Usuario");
    List<Noticia> noticias = (List<Noticia>)request.getAttribute("noticias");

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
        <link rel="stylesheet" href="css/Perfil.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
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
                            <img src="<%= user.getAvatar()%>" alt="PerfilFoto" />
                        </div>
                        <div class="perfil-datos container row">
                            <h2><%= user.getNickname()%></h2>
                            <h2><%= user.getCorreo()%></h2>
                        </div>
                        <div class="perfil-config container row">
                            <a href="">Cambiar Nombre de Usuario</a>
                            <a href="">Cambiar Correo</a>
                            <a href="">Cambiar Contraseña</a>
                        </div>
                    </div>
                    <div class="noticias-marcadas container">
                        <section class="Seccion-Titulo container row">
                            Noticias Marcadas
                        </section>
                        <div class="perfil-marcadas container row">
                            <% if( noticias != null){ %>
                            <% for( Noticia element : noticias){ %>
                            <div class="noticia-box container">
                                <a href="ShowNoticia?idnoticia=<%= element.getId() %>">
                                    <div class="img-box container">
                                        <img src="<%= element.getImagen() %>" alt="" />
                                    </div>
                                    <h2><%= element.getTitulo() %></h2>
                                    <p>
                                        <%= element.getDescripcion() %>
                                    </p>
                                </a>
                            </div>
                            <% } %>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%-- JSP para el footer --%>
        <jsp:include page="footer.jsp"/>
    </body>
</html>

