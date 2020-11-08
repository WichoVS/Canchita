<%-- 
    Document   : noticias
    Created on : 8 nov. 2020, 3:10:36
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
        <link rel="stylesheet" href="noticias.css" />
        <script src="js/header.js" defer></script>
        <title>Noticia</title>
    </head>
    <body>
        <div class="header" style="position: relative; top: 0px" id="header">
            <div class="wrapper">
                <div class="headerbox container row">
                    <div class="logo container">
                        <a class="container" href="index.jsp"
                           ><img class="imagen" src="assets/Logo.png" alt="LogoCanchita"
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
                            <a class="container sport_opc" href="InicioSesion.jsp">Perfil</a>
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
        <div class="content" style="position: relative; top: 0px" id="content">
            <div class="content_center">
                <div class="image_main">
                    <div>
                        <p>Categoria</p>
                    </div>
                    <img src="http://placecorgi.com/800/300" alt="Imagen principal" />
                </div>
                <div class="content_news">
                    <div class="news_info">
                        <p class="title_news">Titulo de Noticia</p>

                        <svg
                            height="28"
                            width="28"
                            fill="none"
                            stroke="#330a0a"
                            stroke-width="2"
                            name="marcador"
                            >
                        <path d="M3 3 L22 3 L22 26 L12.5 15 L3 26 Z" />
                        </svg>
                        <svg width="25" height="25" viewBox="0 0 10 10">
                        <path
                            fill="#330a0a"
                            fill-rule="evenodd"
                            d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                            ></path>
                        </svg>
                        <p class="rating">5.0</p>
                        <p class="datanews">
                            Monterrey,NL. - 5:35 p.m. Escrito por nombre de usuario
                        </p>
                        <div class="content">
                            <p class="textos">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                finibus massa sed eros pretium malesuada. Maecenas urna augue,
                                suscipit et orci a, volutpat mattis nulla. Vestibulum ut
                                pharetra arcu. Curabitur eu tortor sed augue porta placerat.
                                Pellentesque facilisis odio sit amet dolor molestie, in commodo
                                metus interdum. Cras lobortis, purus sit amet convallis
                                fermentum, erat neque malesuada justo, sit amet aliquet augue
                                diam ornare mauris. Donec fringilla scelerisque arcu in
                                volutpat. Mauris risus metus, placerat blandit congue hendrerit,
                                accumsan nec quam. Nulla commodo ipsum velit, ut elementum
                                mauris suscipit quis. Suspendisse a sapien faucibus, fringilla
                                erat eu, tristique dolor. Aenean lacus ligula, lacinia id
                                pellentesque ac, tempor et sapien. Donec vehicula risus orci, et
                                fringilla tortor venenatis vitae. Suspendisse quis suscipit
                                nisl. Etiam quis quam justo. Nam faucibus viverra tellus sit
                                amet posuere. Etiam eleifend quis sapien vel semper. Morbi in
                                gravida ante. Phasellus sit amet purus vitae diam vestibulum
                                volutpat. Ut a laoreet turpis. Mauris euismod aliquet nunc, ut
                                consequat urna imperdiet ac. Morbi velit purus, viverra sed nisi
                                vel, porttitor pharetra eros. Morbi nec tempor augue. Etiam
                                ullamcorper massa ut orci venenatis mollis. Cras nec fermentum
                                diam. Sed id purus facilisis, condimentum tellus a, semper
                                risus. Praesent id ligula lobortis, pretium dolor non, maximus
                                risus. Aenean vehicula pretium libero tincidunt sodales.
                                Praesent purus justo, convallis ac ante ut, congue gravida ante.
                                Etiam faucibus blandit justo elementum vehicula. In hac
                                habitasse platea dictumst. Vestibulum lacinia ipsum non varius
                                porttitor. Nullam tempor lacinia quam eu consequat. Integer in
                                felis mi. Quisque quis enim nibh. Nam nulla turpis, pellentesque
                                iaculis urna nec, vulputate pulvinar lacus. Suspendisse nec
                                lectus arcu. Mauris massa metus, egestas sed varius et,
                                ultricies a nibh. Etiam posuere augue lacus, dictum eleifend
                                quam venenatis sit amet. Sed ut ex eros. Nam cursus scelerisque
                                vehicula. Vestibulum ante ipsum primis in faucibus orci luctus
                                et ultrices posuere cubilia curae; Nulla ac pharetra enim.
                                Vestibulum eros erat, tristique ut odio ac, accumsan cursus
                                eros. Sed maximus odio massa, nec rhoncus leo scelerisque eu.
                                Nulla commodo quis orci eget pharetra. Ut auctor pellentesque
                                tortor, sed facilisis magna lacinia a. Nullam vel mi sagittis,
                                commodo dui ac, congue ex. Praesent vel posuere nisl. Aliquam
                                volutpat bibendum orci, nec luctus magna ultricies at.
                            </p>
                            <div class="div_image">
                                <img
                                    class="image_news"
                                    src="http://placecorgi.com/800/300"
                                    alt="Imagen de noticia"
                                    />
                            </div>
                            <p class="textos">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                finibus massa sed eros pretium malesuada. Maecenas urna augue,
                                suscipit et orci a, volutpat mattis nulla. Vestibulum ut
                                pharetra arcu. Curabitur eu tortor sed augue porta placerat.
                                Pellentesque facilisis odio sit amet dolor molestie, in commodo
                                metus interdum. Cras lobortis, purus sit amet convallis
                                fermentum, erat neque malesuada justo, sit amet aliquet augue
                                diam ornare mauris. Donec fringilla scelerisque arcu in
                                volutpat. Mauris risus metus, placerat blandit congue hendrerit,
                                accumsan nec quam. Nulla commodo ipsum velit, ut elementum
                                mauris suscipit quis. Suspendisse a sapien faucibus, fringilla
                                erat eu, tristique dolor. Aenean lacus ligula, lacinia id
                                pellentesque ac, tempor et sapien. Donec vehicula risus orci, et
                                fringilla tortor venenatis vitae. Suspendisse quis suscipit
                                nisl. Etiam quis quam justo. Nam faucibus viverra tellus sit
                                amet posuere. Etiam eleifend quis sapien vel semper. Morbi in
                                gravida ante. Phasellus sit amet purus vitae diam vestibulum
                                volutpat. Ut a laoreet turpis. Mauris euismod aliquet nunc, ut
                                consequat urna imperdiet ac. Morbi velit purus, viverra sed nisi
                                vel, porttitor pharetra eros. Morbi nec tempor augue. Etiam
                                ullamcorper massa ut orci venenatis mollis. Cras nec fermentum
                                diam. Sed id purus facilisis, condimentum tellus a, semper
                                risus. Praesent id ligula lobortis, pretium dolor non, maximus
                                risus. Aenean vehicula pretium libero tincidunt sodales.
                                Praesent purus justo, convallis ac ante ut, congue gravida ante.
                                Etiam faucibus blandit justo elementum vehicula. In hac
                                habitasse platea dictumst. Vestibulum lacinia ipsum non varius
                                porttitor. Nullam tempor lacinia quam eu consequat. Integer in
                                felis mi. Quisque quis enim nibh. Nam nulla turpis, pellentesque
                                iaculis urna nec, vulputate pulvinar lacus. Suspendisse nec
                                lectus arcu. Mauris massa metus, egestas sed varius et,
                                ultricies a nibh. Etiam posuere augue lacus, dictum eleifend
                                quam venenatis sit amet. Sed ut ex eros. Nam cursus scelerisque
                                vehicula. Vestibulum ante ipsum primis in faucibus orci luctus
                                et ultrices posuere cubilia curae; Nulla ac pharetra enim.
                                Vestibulum eros erat, tristique ut odio ac, accumsan cursus
                                eros. Sed maximus odio massa, nec rhoncus leo scelerisque eu.
                                Nulla commodo quis orci eget pharetra. Ut auctor pellentesque
                                tortor, sed facilisis magna lacinia a. Nullam vel mi sagittis,
                                commodo dui ac, congue ex. Praesent vel posuere nisl. Aliquam
                                volutpat bibendum orci, nec luctus magna ultricies at.
                            </p>

                            <div class="div_video">
                                <iframe
                                    width="420"
                                    height="315"
                                    src="https://www.youtube.com/embed/tgbNymZ7vqY"
                                    >
                                </iframe>
                            </div>
                            <div class="valoracion">
                                <p>Valora la noticia</p>
                                <center>
                                    <svg width="25" height="25" viewBox="0 0 10 10">
                                    <path
                                        fill="none"
                                        stroke="#330a0a"
                                        stroke-width="1"
                                        d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                                        ></path>
                                    </svg>
                                    <svg width="25" height="25" viewBox="0 0 10 10">
                                    <path
                                        fill="none"
                                        stroke="#330a0a"
                                        stroke-width="1"
                                        d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                                        ></path>
                                    </svg>
                                    <svg width="25" height="25" viewBox="0 0 10 10">
                                    <path
                                        fill="none"
                                        stroke="#330a0a"
                                        stroke-width="1"
                                        d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                                        ></path>
                                    </svg>
                                    <svg width="25" height="25" viewBox="0 0 10 10">
                                    <path
                                        fill="none"
                                        stroke="#330a0a"
                                        stroke-width="1"
                                        d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                                        ></path>
                                    </svg>
                                    <svg width="25" height="25" viewBox="0 0 10 10">
                                    <path
                                        fill="none"
                                        stroke="#330a0a"
                                        stroke-width="1"
                                        d="M5.056 8L1.931 9.648l.597-3.49L0 3.684l3.494-.509L5.056 0l1.562 3.176 3.494.51-2.528 2.471.597 3.491z"
                                        ></path>
                                    </svg>
                                </center>
                                <p>Comparte la noticia</p>
                                <center>
                                    <div class="comparte">
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                    </div>
                                </center>
                            </div>
                            <div class="content">
                                <div class="comentarios">
                                    <p>Comentarios</p>
                                    <textarea
                                        class="text_com"
                                        cols="100"
                                        rows="6"
                                        placeholder="Escribe..."
                                        ></textarea
                                    ><br />
                                    <label for="user_temp">Publicado como: </label>
                                    <input
                                        type="text"
                                        id="user_temp"
                                        placeholder="Usuario temporal"
                                        />
                                    <button>Agregar Comentario</button> <br /><br />

                                    <select id="filtro">
                                        <option value="Recientes">Recientes</option>
                                        <option value="Likes">Likes</option>
                                    </select>
                                    <label for="filtro" style="margin-right: 10px"
                                           >Ordenar por:</label
                                    >
                                    <hr />
                                    <div class="content_comentario">
                                        <div class="image_profile">
                                            <img
                                                src="http://placecorgi.com/800/300"
                                                alt="Imagen principal"
                                                />
                                        </div>
                                        <div class="comentario_data">
                                            <p class="user">Usuario</p>
                                            <p class="user_time">Hace un dia</p>
                                            <p class="cometario_text">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu leo eget nunc mattis sollicitudin in non justo. 
                                                Vivamus viverra iaculis arcu vel malesuada. Aliquam sagittis tortor a orci placerat, sed iaculis lectus aliquet. 
                                                Vivamus feugiat, orci in scelerisque maximus, enim magna placerat odio, vel egestas tortor nunc ut ex.
                                                Vestibulum vel turpis justo. Nam vel tortor nec augue cursus auctor. Morbi pretium, nisi et maximus malesuada,
                                                est ex auctor arcu, sed eleifend quam ante ac velit.


                                            </p>
                                            <p class="ocultar">Ocultar Respuestas</p>
                                            <p class="like">-0</p>
                                            <p class="like">+0</p>
                                            <hr />
                                        </div>
                                    </div>

                                    <div class="content_subcomentario">
                                        <div class="empty_content"></div>
                                        <div class="subcomentario">
                                            <div class="content_comentario">
                                                <div class="image_profile">
                                                    <img
                                                        src="http://placecorgi.com/800/300"
                                                        alt="Imagen principal"
                                                        />
                                                </div>
                                                <div class="comentario_data">
                                                    <p class="user">Usuario</p>
                                                    <p class="user_time">Hace un dia</p>
                                                    <p class="cometario_text">
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu leo eget nunc mattis sollicitudin in non justo.
                                                        Vivamus viverra iaculis arcu vel malesuada. Aliquam sagittis tortor a orci placerat, sed iaculis lectus aliquet. 
                                                        Vivamus feugiat, orci in scelerisque maximus, enim magna placerat odio, vel egestas tortor nunc ut ex. 
                                                        Vestibulum vel turpis justo. Nam vel tortor nec augue cursus auctor. Morbi pretium, nisi et maximus malesuada, 
                                                        est ex auctor arcu, sed eleifend quam ante ac velit.


                                                    </p>
                                                    <p class="like">-0</p>
                                                    <p class="like">+0</p>

                                                    <br />
                                                    <hr />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="caja_responder">
                                        <textarea
                                            name=""
                                            id=""
                                            cols="30"
                                            rows="4"
                                            class="contestar"
                                            placeholder="Escribe un comentario"
                                            ></textarea>
                                        <br />
                                        <button>Responder</button>
                                    </div>
                                </div>
                            </div>
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

