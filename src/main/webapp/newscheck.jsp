<%-- 
    Document   : newscheck
    Created on : 8 dic. 2020, 3:14:04
    Author     : angel
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
        <link rel="stylesheet" href="css/newscheck.css" />
        <link rel="stylesheet" href="css/HyF.css"/>
        <script src="js/header.js" defer></script>
        <title>CMS</title>
    </head>

    <body>
           <%-- JSP para el header --%>
       <jsp:include page="header.jsp"/>
       
        <div class="content" style="position: relative; top:0px;" id="content">
            
       
       
        <%-- JSP para el footer --%>
         <jsp:include page="footer.jsp"/>
    </body>

</html>
