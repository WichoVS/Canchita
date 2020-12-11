<%-- 
    Document   : Registro
    Created on : 8 nov. 2020, 3:09:32
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Usuario"%>
<%
    Usuario user = (Usuario) session.getAttribute("Usuario");
    String foto = "";
    String nombre = "";
    String display = "block";
    String display2 = "none";
    String display_cr = "none";
    String display_ed = "none";
    if (user == null) {
        foto = "assets/anonimo.png";
        display = "none";
        display2 = "block";
    } else if (user.isCreador()) {
        display_cr = "block";
    } else if (user.isEditor()) {
        display_ed = "block";
        display_cr = "block";
    } else if (user.isAdmin()) {
        display_ed = "block";
        display_cr = "block";
    }

    if (user != null) {
        foto = user.getAvatar();
        nombre = user.getNickname();
    }
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
        <link rel="stylesheet" href="https://use.typekit.net/gkx8ybj.css">
        <link rel="stylesheet" href="css/Registro.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="js/header.js" defer></script>
        <script src="js/registrocheck.js" defer></script>
<link rel="shortcut icon" type="image/x-icon" href="assets/icono.ico" />
        <title>Registro</title>
    </head>

    <body>
        <div class="header" style="position: relative; top: 0px" id="header">
            <div class="wrapper">
                <div class="headerbox container row">
                    <div class="logo container">
                        <a class="container" href="NoticiasPrincipal">
                            <img class="imagen" src="assets/Logo.png"
                                 alt="LogoCanchita"/>
                        </a>
                    </div>
                    <div class="navopc container">
                <div>
                    <a class="container sport_opc" href="NotiDeportes?depSubCat=General">Deportes </a>
                    <div id="menu_divd" style="display: block">
                        <a class="sport_category" href="NotiDeportes?depSubCat=Futbol">Futbol </a>
                        <a class="sport_category" href="NotiDeportes?depSubCat=FutbolAmericano"
                           >Futbol Americano
                        </a>
                        <a class="sport_category" href="NotiDeportes?depSubCat=Baloncesto">Baloncesto </a>
                        <a class="sport_category" href="NotiDeportes?depSubCat=Motor">Motor </a>
                        <a class="sport_category" href="NotiDeportes?depSubCat=Tenis">Tenis </a>
                        <a class="sport_category" href="NotiDeportes?depSubCat=Boxeo">Boxeo </a>
                    </div>
                </div>
                <div>
                    <a class="container sport_opc" href="NotiEsports?depSubCat=General">Esports</a>
                    <div id="menu_dive" style="display: block">
                        <a class="sport_category" href="NotiEsports?depSubCat=Moba">Moba </a>
                        <a class="sport_category" href="NotiEsports?depSubCat=Shooter">Shooter </a>
                        <a class="sport_category" href="NotiEsports?depSubCat=Estrategia">Estrategia </a>
                        <a class="sport_category" href="NotiEsports?depSubCat=Cartas">Cartas </a>
                    </div>
                </div>
                <div class="search_div" id="search_div">
                    <a class="container search_opc" style="cursor: pointer">Buscar</a>
                    <div
                        class="search_container_box"
                        id="search_container_box"
                        style="top: -200px"
                        >
                        <input
                            type="text"
                            class="search_input"
                            placeholder="Buscar..."
                            />
                    </div>
                    <ul class="searcher" style="display: none"></ul>
                    <div
                        class="search_container"
                        id="search_container"
                        style="display: none"
                        ></div>
                </div>
                <div>
                    <a class="container sport_opc" href="">
                        <div class ="img-user container">
                            <img src="<%= foto%>" alt="ImgUsuario"/>
                        </div>
                    </a>
                    <div id="menu_divp" style="display: block">
                        <a class="sport_category" href="InicioSesion.jsp" style="display:<%= display2%>">Inicio de Sesión</a>
                        <a class="sport_category" href="Registro.jsp" style="display:<%= display2%>">Registro</a>
                        <a class="sport_category" href="Perfil.jsp" style="display:<%= display%>"><%= nombre%></a>
                        <a class="sport_category" href="Logout" style="display:<%= display%>">Cerrar Sesión</a>
                        <a class="sport_category" href="cms.jsp" style="display:<%= display_cr%>">CMS</a>
                        <a class="sport_category" href="newscheck" style="display:<%= display_ed%>">Validar CMS</a>
                    </div>
                </div>
            </div>
                </div>
            </div>
        </div>
        <div class="registro container row" id ="content" >
            <div class="ilustracion-left container">
                <img src="assets/nuguriRegistro.jpg" alt="ImgLeft" />
            </div>
            <div class="registro-datos container">
                <h1>REGISTRO</h1>
                <form class="container" id="formulario" >
                    <label for="input-correo-r">Correo Electrónico: </label>
                    <input type="email" name="input-correo-r" class="input-correo-r" required/>
                    <label for="input-usuario">Nombre de Usuario: </label>
                    <input type="text" name="input-usuario-r" class="input-usuario-r" required />
                    <label for="input-password-r">Contraseña: </label>
                    <input
                        type="password"
                        name="input-password-r"
                        id="input-password-r" required
                        />
                    <label for="rs-twitter">Twitter: </label>
                    <input type="text" name="rs-twitter" class="rs-twitter" />
                    <label for="rs-facebook">Facebook: </label>
                    <input type="text" name="rs-facebook" class="rs-facebook" />
                    <img
                        class="registro-img-user container"
                        src="assets/fakerUserImage.jpg"
                        alt="userImagen"
                        />
                    <input type="file"  name="image" id="image" accept="image/png, image/jpeg, image/jpg" required/>
                    <input type="submit" id="btn_reg"
                           value="Registrarse"/>
                </form>
                <div id="ajaxresponse">  </div>
                <br/>
                <div id="redirect" style="display:none"> <a class ="redirect"href="InicioSesion.jsp"> Iniciar sesión </a> </div>
                <br />
                <br />
            </div>
            <div class="ilustracion-right container">
                <img src="assets/MbappeRegistro.jpg" alt="MbappeRegistro" />
            </div>
        </div>
        <div class="footer" id="footer" style="margin-top: 0px">
            <div class="wrapper">
                <div class="footer-box container row">
                    <div class="left container">
                        <a href="index.jsp">
                            <img src="assets/Logo.png" alt="LogoCanchita" />
                        </a>
                        <p>
                            Esta Página Web fue desarrollada por: <br />
                            <br />
                            Luis Angel Villanueva Sánchez <br />
                            luis.villanueva.1029@gmail.com <br />
                            <br />
                            Jesus Ángel Paredes Sauceda <br />
                            angel.2899pasj@gmail.com
                        </p>
                    </div>
                    <div class="right container">
                        <h2>Categorías</h2>
                        <div class="container">
                            <div>
                                <h3><a href=""> Deportes</a></h3>
                                <h4><a href=""> Futbol</a></h4>
                                <h4><a href=""> Futbol Americano</a></h4>
                                <h4><a href=""> Baloncesto</a></h4>
                                <h4><a href=""> Motor</a></h4>
                                <h4><a href=""> Tenis</a></h4>
                                <h4><a href=""> Boxeo</a></h4>
                            </div>
                            <div>
                                <h3><a href=""> Esports</a></h3>
                                <h4><a href=""> Moba</a></h4>
                                <h4><a href=""> Shooter</a></h4>
                                <h4><a href=""> Estretegia</a></h4>
                                <h4><a href=""> Cartas</a></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
