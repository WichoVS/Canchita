<%-- 
    Document   : header
    Created on : 1 dic. 2020, 2:30:29
    Author     : angel
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

<%-- Estos cambios son para el header, todos los request del servlet que se reflejen en el header se pondran en este jsp --%>


<div class="header" style="position: relative; top: 0px" id="header">
    <div class="wrapper">
        <div class="headerbox container row">
            <div class="logo container">
                <a class="container" href="NoticiasPrincipal"
                   ><img
                        class="imagen"
                        src="assets/Logo.png"
                        alt="LogoCanchita"
                        /></a>
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
                        <a class="sport_category" href="NotiEsports?depSubCat=Moba">MOBA </a>
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
                        <a class="sport_category" href="Perfil" style="display:<%= display%>"><%= nombre%></a>
                        <a class="sport_category" href="Logout" style="display:<%= display%>">Cerrar Sesión</a>
                        <a class="sport_category" href="cms.jsp" style="display:<%= display_cr%>">CMS</a>
                        <a class="sport_category" href="newscheck" style="display:<%= display_ed%>">Validar CMS</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
