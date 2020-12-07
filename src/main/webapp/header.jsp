<%-- 
    Document   : header
    Created on : 1 dic. 2020, 2:30:29
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
 
String foto = (String)session.getAttribute("ruta");
String display = "block";
String display2 = "none";
if(foto == null){
 foto = "assets/fakerUserImage.jpg";
 display = "none";
 display2 = "block";
    }
%>

<%-- Estos cambios son para el header, todos los request del servlet que se reflejen en el header se pondran en este jsp --%>


 <div class="header" style="position: relative; top: 0px" id="header">
            <div class="wrapper">
                <div class="headerbox container row">
                    <div class="logo container">
                        <a class="container" href="index.jsp"
                           ><img
                                class="imagen"
                                src="assets/Logo.png"
                                alt="LogoCanchita"
                                /></a>
                    </div>
                    <div class="navopc container">
                        <div>
                            <a class="container sport_opc" href="Deportes.jsp">Deportes </a>
                            <div id="menu_divd" style="display: block">
                                <a class="sport_category" href="Deportes.jsp">Futbol </a>
                                <a class="sport_category" href="Deportes.jsp"
                                   >Futbol Americano
                                </a>
                                <a class="sport_category" href="Deportes.jsp">Baloncesto </a>
                                <a class="sport_category" href="Deportes.jsp">Motor </a>
                                <a class="sport_category" href="Deportes.jsp">Tenis </a>
                                <a class="sport_category" href="Deportes.jsp">Boxeo </a>
                            </div>
                        </div>
                        <div>
                            <a class="container sport_opc" href="Esports.jsp">Esports</a>
                            <div id="menu_dive" style="display: block">
                                <a class="sport_category" href="Esports.jsp">Moba </a>
                                <a class="sport_category" href="Esports.jsp">Shooter </a>
                                <a class="sport_category" href="Esports.jsp">Estrategia </a>
                                <a class="sport_category" href="Esports.jsp">Cartas </a>
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
                                    <img src="<%= foto %>" alt="ImgUsuario"/>
                                </div>
                            </a>
                            <div id="menu_divp" style="display: block">
                                <a class="sport_category" href="InicioSesion.jsp" style="display:<%= display2 %>">Inicio de Sesión</a>
                                <a class="sport_category" href="Registro.jsp" style="display:<%= display2 %>">Registro</a>
                                <a class="sport_category" href="Perfil.jsp" style="display:<%= display %>">Perfil</a>
                                <a class="sport_category" href="Logout" style="display:<%= display %>">Cerrar Sesión</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
