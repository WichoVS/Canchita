<%-- 
    Document   : index
    Created on : 8 nov. 2020, 2:56:34
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
        <link rel="stylesheet" href="css/index.css"/>
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>Canchita</title>
    </head>

    <body>
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
                            <a class="container sport_opc" href="InicioSesion.jsp">
                                <div class ="img-user container">
                                    <img src="assets/fakerUserImage.jpg" alt="ImgUsuario"/>
                                </div>
                            </a>
                            <div id="menu_divp" style="display: block">
                                <a class="sport_category" href="InicioSesion.jsp"
                                   >Inicio de Sesión</a
                                >
                                <a class="sport_category" href="Registro.jsp">Registro</a>
                                <a class="sport_category" href="Perfil.jsp">Perfil</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="position: relative; top: 0px" id="content">
            <div class="principal-nota container row">
                <div class="noticia-principal container">
                    <div class="titulo">Perro se come la tarea</div>
                    <div class="desc">
                        Perro se come la tarea de matemáticas, ahora sabe contar hasta 4.
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
