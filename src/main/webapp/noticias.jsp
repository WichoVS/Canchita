<%-- 
    Document   : noticias
    Created on : 8 nov. 2020, 3:10:36
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Imagenes"%>
<%@page import="Models.Videos" %>
<%@page import="Models.Noticia"%>
<%@page import="Models.Usuario"%>
<%@page import="java.util.List"%>

<%
List<Imagenes> imagenes = (List<Imagenes>)request.getAttribute("imagenes");
List<Videos> videos = (List<Videos>)request.getAttribute("videos");
Noticia noticia = (Noticia)request.getAttribute("noticias");
Usuario usernews = (Usuario)request.getAttribute("usernews");
String validado = (String)request.getAttribute("validado");
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
        <link rel="stylesheet" href="css/noticias.css" />
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>Noticia</title>
    </head>
    <body>
          <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
        <div class="content" style="position: relative; top: 0px" id="content">
            <div class="content_center">
                <div class="image_main">
                    <div>
                        <p><%= noticia.getCategoria() %></p>
                    </div>
                    <img src="<%= noticia.getImagen() %>" alt="Imagen principal" />
                </div>
                <div class="content_news">
                    <div class="news_info">
                        <p class="title_news"><%= noticia.getTitulo() %></p>

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
                            Monterrey,NL. - 5:35 p.m. Escrito por <%= usernews.getNickname() %>
                        </p>
                        <div class="content">
                            <p class="textos">
                                <%= noticia.getText() %>
                            </p>
                            
                            <%  for(Imagenes element : imagenes){%>
                            <div class="div_image">
                                <img
                                    class="image_news"
                                    src="<%=  element.getRuta() %>"
                                    alt="Imagen de noticia"
                                    />
                            </div>
                           <% } %>
                            
                            
                            <%  for(Videos element : videos){%>
                            <div class="div_video">
                              
                                <video width="420"  height="315" controls>
                                        <source src="<%=  element.getRuta() %>" type="video/mp4">
                                </video>
                            </div>
                            <% } %>
                            
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
                            <% if(validado == "si"){ %>
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
                            <% } %>
                            
                            <% if(validado == "no"){ %>
                            <br/><br/>
                            <center> <p ><a style="color: blue;text-decoration: underline;" href="Validarnoticia?idnoticia=<%= noticia.getId()%>"> Validar </a> </p></center>
                            <center> <p ><a style ="color:blue;text-decoration: underline;" href="newscheck"> Regresar </a> </p></center>
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

